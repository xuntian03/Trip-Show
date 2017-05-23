Page({
  data:{
    title:'Loding...',
	views:[]
  },
  onLoad(params){
    //console.log(params.city)
    //var apiUrl = 'http://localhost:88/getList.php?city='+params.city
    var apiUrl = 'https://tripjson.duapp.com/getList.php?city='+params.city
	this.setData({title:params.city})
	var _this = this
	wx.request({
	  url: apiUrl, 
	  data: {},
	  header: {
		  'content-type': 'application/text'
	  },
	  success: function(res) {
		//console.log(res.data)
		_this.setData({views:res.data})
	  }
	})
  }
})