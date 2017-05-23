Page({
  data:{
    title:'Loding...',
	detail:[]
  },
  onLoad(params){
    //console.log(params)
    //var apiUrl = 'http://localhost:88/getItem.php?views='+params.views
    var apiUrl = 'https://tripjson.duapp.com/getItem.php?views='+params.views
	this.setData({title:params.views})
	var _this = this
	wx.request({
	  url: apiUrl, 
	  data: {},
	  header: {
		  'content-type': 'application/text'
	  },
	  success: function(res) {
		//console.log(res.data)
		_this.setData({detail:res.data})
	  }
	})
  }
})