Page({
  data:{
    imgUrls:[
	  '../../image/index/hot1.png',
	  '../../image/index/hot2.png',
	  '../../image/index/hot3.png',
	  '../../image/index/hot4.png',
	  '../../image/index/hot5.png',
	],
	addCity:[]
  },
  onLoad:function(){
    //var apiUrl = 'http://localhost:88/getCity.php'
    var apiUrl = 'https://tripjson.duapp.com/getCity.php'
	var _this = this
	wx.request({
	  url: apiUrl, 
	  data: {},
	  header: {
		  'content-type': 'application/text'
	  },
	  success: function(res) {
		//console.log(res.data)
		_this.setData({addCity:res.data})
	  }
	})
  }

})