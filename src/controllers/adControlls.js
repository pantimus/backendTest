const boom = require('boom');
const mysql = require('../config/db');
const Page = require('../config/config');


async function numberRow(){

   return await mysql.query(`SELECT COUNT(*) as NumRow FROM ads`)
    .then(result =>{
      
      return result[0][0].NumRow;
    })
    .catch(err=> {
      console.log(err);
    })
  }
  
exports.getAds = async (req, reply) => {
  try{
    let urlData = req.urlData()
    let sort="";
    
    if (urlData.query == "sort")
    {
      sort = "DESC";
    }
    else sort = "";

    let page_count=0;
    let page = req.params.page || 1;
    
    let offset = (page - 1) * Page.page;
    let numRow = await numberRow()
    
    page_count = Math.ceil(numRow/Page.page) 

    const adPage =  mysql.query(`SELECT id_ad, ad_title, ad_desc, JSON_EXTRACT(ad_pic, '$[0]') as ad_pic, ad_data  FROM 
    ads ORDER BY ad_data ${sort}  LIMIT ${Page.page} OFFSET ${offset}`)
    .then(result => {
      return {
        numRow: page_count,
        ad_page_count: result[0].length,
        page_numbers: page,
        ad: result[0],
      }
    })
    .catch(err => {
      console.log(err);
    })
    
    reply.send(await adPage)
   }
  catch (err)
  {
    throw boom.boomify(err);
  }
}


exports.getSingleAd = async (req, reply) => {
  try{
    //console.log("sdsd");
    let urlData = req.urlData()
    let fields="JSON_EXTRACT(ad_pic, '$[0]') as ad_pic";
    
    if (urlData.query == "fields")
    {
      fields = "ad_desc, ad_pic";
    }
    else fields = "JSON_EXTRACT(ad_pic, '$[0]') as ad_pic";

    let id = req.params.id
    let singleAd = await mysql.query(`SELECT ad_title, ${fields} FROM ads WHERE id_ad=?`, id)
    //console.log(singleAd[0]);
    const ad = {
      ad: singleAd[0]
    }
    reply.send(await ad)
   }
  catch (err)
  {
    throw boom.boomify(err);
  }
}

function jsonQuery()
{

}
exports.addAd = async (req, reply) => {
  try{
      
      console.log(req.body.title);
      if (req.validationError) return reply
        .code(400)
        .send({err: "400", msg: "Печаль беда, неправильный запрос"})

      if((req.body.title=='')||(req.body.title.length>200)) return reply
        .code(400)
        .send({err: "401", msg: "Печаль беда, неправильно заполненное поле"})
        else if ((req.body.desc=='')||(req.body.title.length>1000)) return reply
        .code(400)
        .send({err: "401", msg: "Печаль беда, неправильно заполненное поле"})
        else if((req.body.pic=='')||(req.body.title.length>3)) return reply
        .code(400)
        .send({err: "401", msg: "Печаль беда, неправильно заполненное поле"})
      const body = req.body;
      var pic = [];
      body.pic.forEach(pic_element =>{
        pic.push(`'${pic_element}'`);
      })
      
      return await mysql.query(`
        INSERT INTO ads (ad_title, ad_desc, ad_pic) VALUES ("${body.title}", 
        "${body.desc}", JSON_ARRAY(${pic}))
      `)
      .then(result=>{
        console.log("Объявление добавлено")
        reply
        .code(201)
        .send({msg: "Объявление добавлено"});
      })
      .catch(err=>
        {
          console.log("Упс, неправильный запрос", err)
          reply
          .code(501)
          .send({msg: "Печаль беда, ошибка запроса",
                 msgError: err});
        });
      
   }
  catch (err)
  { 
    throw boom.boomify(err);
  }
}


