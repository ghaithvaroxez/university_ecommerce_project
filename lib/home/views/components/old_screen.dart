// Column(
// children: [
// Expanded(
// flex: 6,
// child: Container(
// decoration: BoxDecoration(
// color: Colors.orange,
// borderRadius: BorderRadius.only(
// bottomLeft: Radius.circular(24),
// bottomRight: Radius.circular(24),
// ),
// ),
// child: SafeArea(
// child: Padding(
// padding: const EdgeInsets.all(16),
// child: Column(
// children: [
// Expanded(
// flex: 2,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// IconButton(
// icon: Icon(
// Icons.menu_outlined,
// color: Colors.white,
// ),
// onPressed: () {
// setState(() {
// // status=status==FSBStatus.FSB_OPEN?FSBStatus.FSB_CLOSE:FSBStatus.FSB_OPEN;
// });
// }),
// Container(
// height: 50,
// width: 50,
// child: CircleAvatar(
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// ],
// )),
// Expanded(flex: 1, child: Container()),
// Expanded(
// flex: 2,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// "what are you looking for ??",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold,
// fontSize: MediaQuery.of(context).size.height *
// 2.4 /
// 64,
// ),
// ),
// ],
// ),
// ),
// Expanded(
// flex: 1,
// child: Card(
// elevation: 4,
// color: Colors.white,
// child: Padding(
// padding: const EdgeInsets.only(
// left: 8.0,
// right: 8.0,
// ),
// child: TextField(
// autofocus: true,
// decoration: InputDecoration(
// border: InputBorder.none,
// icon: Icon(
// Icons.search,
// color: Colors.orange,
// ),
//
// hintText: "Search",
// hintStyle: TextStyle(
// fontSize:
// MediaQuery.of(context).size.height *
// 1.4 /
// 64,
// ),
// // counterStyle:TextStyle(color: Colors.orange) ,
// ),
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// ),
// Expanded(flex: 3
// , child: Placeholder()),
// Expanded(
// flex: 8,
// child: Column(
// children: [
// Expanded(
// flex: 2,
// child: TabBar(
// isScrollable: true,
// labelColor: Colors.orange.withOpacity(0.6),
// unselectedLabelColor: Colors.grey.withOpacity(0.9),
// labelStyle: TextStyle(
// fontSize: MediaQuery.of(context).size.height * 1.4 / 64,
// ),
// indicatorColor: Colors.deepOrangeAccent,
// indicatorPadding: EdgeInsets.symmetric(horizontal: 8),
// indicatorSize: TabBarIndicatorSize.label,
// indicatorWeight: 3,
// tabs: [
// Tab(
// text: "Popular",
// ),
// Tab(
// text: "Recommended",
// ),
// Tab(
// text: "Men",
// ),
// Tab(
// text: "Women",
// ),
// Tab(
// text: "Childs",
// ),
// Tab(
// text: "Sports",
// ),
// Tab(
// text: "Electronics",
// ),
// Tab(
// text: "Mobiles",
// ),
// ],
// controller: _tabController,
// ),
// ),
// Expanded(
// flex: 12,
// child: Container(
// margin: EdgeInsets.only(top: 8, bottom: 8),
// child: TabBarView(
// // physics: ScrollPhysics,
// // dragStartBehavior: DragStartBehavior.down,
// controller: _tabController,
// children: [
// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 10,
// itemBuilder: (context, index) => index==9?Container( width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.orange,
// borderRadius: BorderRadius.circular(24),
// ),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64, ),),),
// ):Container(
// width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius: BorderRadius.circular(24),
// image: DecorationImage(
// fit: BoxFit.fill,
// image: NetworkImage(
// "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
// colorFilter: ColorFilter.mode(
// Colors.black.withOpacity(0.2),
// BlendMode.darken))),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Spacer(),
// CircleAvatar(
// backgroundColor: Colors.orange,
// child: IconButton(
// icon: Icon(
// Icons.favorite,
// color: Colors.white,
// ),
// onPressed: () {},
// ))
// ],
// ),
// Spacer(),
// Text(
// "Leather\n     shoes",
// style: TextStyle(
// color:
// Colors.white.withOpacity(0.8),
// fontWeight: FontWeight.bold,
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64,
// ),
// ),
// Row(
// children: [
// ...List<Widget>.generate(
// 5,
// (index) => Icon(
// Icons.star,
// color: Colors.orange,
// size:
// MediaQuery.of(context)
// .size
//     .height *
// 1.6 /
// 64,
// )).toList(),
// Text(
// "(32)",
// style: TextStyle(
// color: Colors.white
//     .withOpacity(0.6),
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 1 /
// 64,
// ),
// )
// ],
// ),
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal:MediaQuery.of(context).size.height *
// 0.1 /
// 64,
// ),
// child: Container(
// height: 38,
// child: Row(
// children: [
// Expanded(
// flex: 2,
// child: Stack(
// children: [
// Positioned(
// left: 0,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// // radius: MediaQuery.of(context).size.height*5/64,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 16,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 32,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// ],
// ),
// ),
// Expanded(child: Container()),
// Expanded(
// flex: 2,
// child: Text("US \$149.89",
// style: TextStyle(
// color: Colors.orange,
// fontSize: MediaQuery.of(
// context)
// .size
//     .height *
// 1 /
// 64,
// ))),
// ],
// ),
// ),
// )
// ],
// ),
// )),
//
// //2
// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 10,
// itemBuilder: (context, index) => index==9?Container( width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.orange,
// borderRadius: BorderRadius.circular(24),
// ),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64, ),),),
// ):Container(
// width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius: BorderRadius.circular(24),
// image: DecorationImage(
// fit: BoxFit.fill,
// image: NetworkImage(
// "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
// colorFilter: ColorFilter.mode(
// Colors.black.withOpacity(0.2),
// BlendMode.darken))),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Spacer(),
// CircleAvatar(
// backgroundColor: Colors.orange,
// child: IconButton(
// icon: Icon(
// Icons.favorite,
// color: Colors.white,
// ),
// onPressed: () {},
// ))
// ],
// ),
// Spacer(),
// Text(
// "Leather\n     shoes",
// style: TextStyle(
// color:
// Colors.white.withOpacity(0.8),
// fontWeight: FontWeight.bold,
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64,
// ),
// ),
// Row(
// children: [
// ...List<Widget>.generate(
// 5,
// (index) => Icon(
// Icons.star,
// color: Colors.orange,
// size:
// MediaQuery.of(context)
// .size
//     .height *
// 1.6 /
// 64,
// )).toList(),
// Text(
// "(32)",
// style: TextStyle(
// color: Colors.white
//     .withOpacity(0.6),
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 1 /
// 64,
// ),
// )
// ],
// ),
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal:MediaQuery.of(context).size.height *
// 0.1 /
// 64,
// ),
// child: Container(
// height: 38,
// child: Row(
// children: [
// Expanded(
// flex: 2,
// child: Stack(
// children: [
// Positioned(
// left: 0,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// // radius: MediaQuery.of(context).size.height*5/64,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 16,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 32,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// ],
// ),
// ),
// Expanded(child: Container()),
// Expanded(
// flex: 2,
// child: Text("US \$149.89",
// style: TextStyle(
// color: Colors.orange,
// fontSize: MediaQuery.of(
// context)
// .size
//     .height *
// 1 /
// 64,
// ))),
// ],
// ),
// ),
// )
// ],
// ),
// )),
// //3
// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 10,
// itemBuilder: (context, index) => index==9?Container( width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.orange,
// borderRadius: BorderRadius.circular(24),
// ),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64, ),),),
// ):Container(
// width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius: BorderRadius.circular(24),
// image: DecorationImage(
// fit: BoxFit.fill,
// image: NetworkImage(
// "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
// colorFilter: ColorFilter.mode(
// Colors.black.withOpacity(0.2),
// BlendMode.darken))),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Spacer(),
// CircleAvatar(
// backgroundColor: Colors.orange,
// child: IconButton(
// icon: Icon(
// Icons.favorite,
// color: Colors.white,
// ),
// onPressed: () {},
// ))
// ],
// ),
// Spacer(),
// Text(
// "Leather\n     shoes",
// style: TextStyle(
// color:
// Colors.white.withOpacity(0.8),
// fontWeight: FontWeight.bold,
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64,
// ),
// ),
// Row(
// children: [
// ...List<Widget>.generate(
// 5,
// (index) => Icon(
// Icons.star,
// color: Colors.orange,
// size:
// MediaQuery.of(context)
// .size
//     .height *
// 1.6 /
// 64,
// )).toList(),
// Text(
// "(32)",
// style: TextStyle(
// color: Colors.white
//     .withOpacity(0.6),
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 1 /
// 64,
// ),
// )
// ],
// ),
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal:MediaQuery.of(context).size.height *
// 0.1 /
// 64,
// ),
// child: Container(
// height: 38,
// child: Row(
// children: [
// Expanded(
// flex: 2,
// child: Stack(
// children: [
// Positioned(
// left: 0,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// // radius: MediaQuery.of(context).size.height*5/64,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 16,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 32,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// ],
// ),
// ),
// Expanded(child: Container()),
// Expanded(
// flex: 2,
// child: Text("US \$149.89",
// style: TextStyle(
// color: Colors.orange,
// fontSize: MediaQuery.of(
// context)
// .size
//     .height *
// 1 /
// 64,
// ))),
// ],
// ),
// ),
// )
// ],
// ),
// )),
// //4
// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 10,
// itemBuilder: (context, index) => index==9?Container( width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.orange,
// borderRadius: BorderRadius.circular(24),
// ),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64, ),),),
// ):Container(
// width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius: BorderRadius.circular(24),
// image: DecorationImage(
// fit: BoxFit.fill,
// image: NetworkImage(
// "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
// colorFilter: ColorFilter.mode(
// Colors.black.withOpacity(0.2),
// BlendMode.darken))),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Spacer(),
// CircleAvatar(
// backgroundColor: Colors.orange,
// child: IconButton(
// icon: Icon(
// Icons.favorite,
// color: Colors.white,
// ),
// onPressed: () {},
// ))
// ],
// ),
// Spacer(),
// Text(
// "Leather\n     shoes",
// style: TextStyle(
// color:
// Colors.white.withOpacity(0.8),
// fontWeight: FontWeight.bold,
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64,
// ),
// ),
// Row(
// children: [
// ...List<Widget>.generate(
// 5,
// (index) => Icon(
// Icons.star,
// color: Colors.orange,
// size:
// MediaQuery.of(context)
// .size
//     .height *
// 1.6 /
// 64,
// )).toList(),
// Text(
// "(32)",
// style: TextStyle(
// color: Colors.white
//     .withOpacity(0.6),
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 1 /
// 64,
// ),
// )
// ],
// ),
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal:MediaQuery.of(context).size.height *
// 0.1 /
// 64,
// ),
// child: Container(
// height: 38,
// child: Row(
// children: [
// Expanded(
// flex: 2,
// child: Stack(
// children: [
// Positioned(
// left: 0,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// // radius: MediaQuery.of(context).size.height*5/64,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 16,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 32,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// ],
// ),
// ),
// Expanded(child: Container()),
// Expanded(
// flex: 2,
// child: Text("US \$149.89",
// style: TextStyle(
// color: Colors.orange,
// fontSize: MediaQuery.of(
// context)
// .size
//     .height *
// 1 /
// 64,
// ))),
// ],
// ),
// ),
// )
// ],
// ),
// )),
//
// //5
// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 10,
// itemBuilder: (context, index) => index==9?Container( width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.orange,
// borderRadius: BorderRadius.circular(24),
// ),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64, ),),),
// ):Container(
// width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius: BorderRadius.circular(24),
// image: DecorationImage(
// fit: BoxFit.fill,
// image: NetworkImage(
// "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
// colorFilter: ColorFilter.mode(
// Colors.black.withOpacity(0.2),
// BlendMode.darken))),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Spacer(),
// CircleAvatar(
// backgroundColor: Colors.orange,
// child: IconButton(
// icon: Icon(
// Icons.favorite,
// color: Colors.white,
// ),
// onPressed: () {},
// ))
// ],
// ),
// Spacer(),
// Text(
// "Leather\n     shoes",
// style: TextStyle(
// color:
// Colors.white.withOpacity(0.8),
// fontWeight: FontWeight.bold,
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64,
// ),
// ),
// Row(
// children: [
// ...List<Widget>.generate(
// 5,
// (index) => Icon(
// Icons.star,
// color: Colors.orange,
// size:
// MediaQuery.of(context)
// .size
//     .height *
// 1.6 /
// 64,
// )).toList(),
// Text(
// "(32)",
// style: TextStyle(
// color: Colors.white
//     .withOpacity(0.6),
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 1 /
// 64,
// ),
// )
// ],
// ),
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal:MediaQuery.of(context).size.height *
// 0.1 /
// 64,
// ),
// child: Container(
// height: 38,
// child: Row(
// children: [
// Expanded(
// flex: 2,
// child: Stack(
// children: [
// Positioned(
// left: 0,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// // radius: MediaQuery.of(context).size.height*5/64,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 16,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 32,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// ],
// ),
// ),
// Expanded(child: Container()),
// Expanded(
// flex: 2,
// child: Text("US \$149.89",
// style: TextStyle(
// color: Colors.orange,
// fontSize: MediaQuery.of(
// context)
// .size
//     .height *
// 1 /
// 64,
// ))),
// ],
// ),
// ),
// )
// ],
// ),
// )),
// //6
// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 10,
// itemBuilder: (context, index) => index==9?Container( width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.orange,
// borderRadius: BorderRadius.circular(24),
// ),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64, ),),),
// ):Container(
// width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius: BorderRadius.circular(24),
// image: DecorationImage(
// fit: BoxFit.fill,
// image: NetworkImage(
// "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
// colorFilter: ColorFilter.mode(
// Colors.black.withOpacity(0.2),
// BlendMode.darken))),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Spacer(),
// CircleAvatar(
// backgroundColor: Colors.orange,
// child: IconButton(
// icon: Icon(
// Icons.favorite,
// color: Colors.white,
// ),
// onPressed: () {},
// ))
// ],
// ),
// Spacer(),
// Text(
// "Leather\n     shoes",
// style: TextStyle(
// color:
// Colors.white.withOpacity(0.8),
// fontWeight: FontWeight.bold,
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64,
// ),
// ),
// Row(
// children: [
// ...List<Widget>.generate(
// 5,
// (index) => Icon(
// Icons.star,
// color: Colors.orange,
// size:
// MediaQuery.of(context)
// .size
//     .height *
// 1.6 /
// 64,
// )).toList(),
// Text(
// "(32)",
// style: TextStyle(
// color: Colors.white
//     .withOpacity(0.6),
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 1 /
// 64,
// ),
// )
// ],
// ),
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal:MediaQuery.of(context).size.height *
// 0.1 /
// 64,
// ),
// child: Container(
// height: 38,
// child: Row(
// children: [
// Expanded(
// flex: 2,
// child: Stack(
// children: [
// Positioned(
// left: 0,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// // radius: MediaQuery.of(context).size.height*5/64,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 16,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 32,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// ],
// ),
// ),
// Expanded(child: Container()),
// Expanded(
// flex: 2,
// child: Text("US \$149.89",
// style: TextStyle(
// color: Colors.orange,
// fontSize: MediaQuery.of(
// context)
// .size
//     .height *
// 1 /
// 64,
// ))),
// ],
// ),
// ),
// )
// ],
// ),
// )),
// //7
// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 10,
// itemBuilder: (context, index) => index==9?Container( width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.orange,
// borderRadius: BorderRadius.circular(24),
// ),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64, ),),),
// ):Container(
// width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius: BorderRadius.circular(24),
// image: DecorationImage(
// fit: BoxFit.fill,
// image: NetworkImage(
// "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
// colorFilter: ColorFilter.mode(
// Colors.black.withOpacity(0.2),
// BlendMode.darken))),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Spacer(),
// CircleAvatar(
// backgroundColor: Colors.orange,
// child: IconButton(
// icon: Icon(
// Icons.favorite,
// color: Colors.white,
// ),
// onPressed: () {},
// ))
// ],
// ),
// Spacer(),
// Text(
// "Leather\n     shoes",
// style: TextStyle(
// color:
// Colors.white.withOpacity(0.8),
// fontWeight: FontWeight.bold,
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64,
// ),
// ),
// Row(
// children: [
// ...List<Widget>.generate(
// 5,
// (index) => Icon(
// Icons.star,
// color: Colors.orange,
// size:
// MediaQuery.of(context)
// .size
//     .height *
// 1.6 /
// 64,
// )).toList(),
// Text(
// "(32)",
// style: TextStyle(
// color: Colors.white
//     .withOpacity(0.6),
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 1 /
// 64,
// ),
// )
// ],
// ),
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal:MediaQuery.of(context).size.height *
// 0.1 /
// 64,
// ),
// child: Container(
// height: 38,
// child: Row(
// children: [
// Expanded(
// flex: 2,
// child: Stack(
// children: [
// Positioned(
// left: 0,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// // radius: MediaQuery.of(context).size.height*5/64,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 16,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 32,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// ],
// ),
// ),
// Expanded(child: Container()),
// Expanded(
// flex: 2,
// child: Text("US \$149.89",
// style: TextStyle(
// color: Colors.orange,
// fontSize: MediaQuery.of(
// context)
// .size
//     .height *
// 1 /
// 64,
// ))),
// ],
// ),
// ),
// )
// ],
// ),
// )),
// //8
// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 10,
// itemBuilder: (context, index) => index==9?Container( width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.orange,
// borderRadius: BorderRadius.circular(24),
// ),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64, ),),),
// ):Container(
// width:
// 220,
// height:
// MediaQuery.of(context).size.height / 4,
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius: BorderRadius.circular(24),
// image: DecorationImage(
// fit: BoxFit.fill,
// image: NetworkImage(
// "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
// colorFilter: ColorFilter.mode(
// Colors.black.withOpacity(0.2),
// BlendMode.darken))),
// margin:
// EdgeInsets.symmetric(horizontal: 20),
// padding: EdgeInsets.all(16),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Spacer(),
// CircleAvatar(
// backgroundColor: Colors.orange,
// child: IconButton(
// icon: Icon(
// Icons.favorite,
// color: Colors.white,
// ),
// onPressed: () {},
// ))
// ],
// ),
// Spacer(),
// Text(
// "Leather\n     shoes",
// style: TextStyle(
// color:
// Colors.white.withOpacity(0.8),
// fontWeight: FontWeight.bold,
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 3 /
// 64,
// ),
// ),
// Row(
// children: [
// ...List<Widget>.generate(
// 5,
// (index) => Icon(
// Icons.star,
// color: Colors.orange,
// size:
// MediaQuery.of(context)
// .size
//     .height *
// 1.6 /
// 64,
// )).toList(),
// Text(
// "(32)",
// style: TextStyle(
// color: Colors.white
//     .withOpacity(0.6),
// fontSize: MediaQuery.of(context)
// .size
//     .height *
// 1 /
// 64,
// ),
// )
// ],
// ),
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal:MediaQuery.of(context).size.height *
// 0.1 /
// 64,
// ),
// child: Container(
// height: 38,
// child: Row(
// children: [
// Expanded(
// flex: 2,
// child: Stack(
// children: [
// Positioned(
// left: 0,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// // radius: MediaQuery.of(context).size.height*5/64,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 16,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// Positioned(
// left: 32,
// right: 0,
// bottom: 0,
// top: 0,
// child:CircleAvatar(
// radius: 16,
// backgroundColor: Colors.white,
// child: Image.asset(
// "assets/images/Profile Image.png",
// ),
// )),
// ],
// ),
// ),
// Expanded(child: Container()),
// Expanded(
// flex: 2,
// child: Text("US \$149.89",
// style: TextStyle(
// color: Colors.orange,
// fontSize: MediaQuery.of(
// context)
// .size
//     .height *
// 1 /
// 64,
// ))),
// ],
// ),
// ),
// )
// ],
// ),
// )),
// ],
// ),
// ),
// ),
// ],
// ),
// ),
//
// // Expanded(flex:4,child: Placeholder())  ,
// ],
// )