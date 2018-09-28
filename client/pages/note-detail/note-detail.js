// pages/note-detail/note-detail.js
Page({

     /**
      * 页面的初始数据
      */
     data: {
          content: {},
          isCollection: false,
          collectionCount: 1.6
     },

     /**
      * 生命周期函数--监听页面加载
      */
     onLoad: function(query) {
          console.log(query);
          wx.request({
               url: 'http://127.0.0.1:3000/content?id=' + query.id,
               data: {},
               method: "GET",
               dataType: "json",
               success: (res, status) => {
                    console.log(status, res);
                    this.setData({
                         content: res.data
                    })
               },
               dail: (res) => {
                    console.log("数据请求错误" + res)
               }
          })
     },

     /**
      * 生命周期函数--监听页面初次渲染完成
      */
     onReady: function() {

     },

     /**
      * 生命周期函数--监听页面显示
      */
     onShow: function() {

     },

     /**
      * 生命周期函数--监听页面隐藏
      */
     onHide: function() {

     },

     /**
      * 生命周期函数--监听页面卸载
      */
     onUnload: function() {

     },

     /**
      * 页面相关事件处理函数--监听用户下拉动作
      */
     onPullDownRefresh: function() {

     },

     /**
      * 页面上拉触底事件的处理函数
      */
     onReachBottom: function() {

     },

     /**
      * 用户点击右上角分享
      */
     onShareAppMessage: function() {

     },

     setCollection: function() {
          if (this.data.isCollection) {
               this.setData({
                    isCollection: false,
                    collectionCount: this.data.collectionCount - 1
               });
          } else {
               this.setData({
                    isCollection: true,
                    collectionCount: this.data.collectionCount + 1
               });
          }
     },
     setfollow: function() {
          if (this.data.isfollow) {
               this.setData({
                    isfollow: false,
               })
          }else{
               this.setData({
                    isfollow:true
               })
          }
     }
})