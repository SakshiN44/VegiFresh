class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/slider_vegetables2.jpg"),
          AssetImage("images/slider_vegetables1.jpg"),
          AssetImage("images/slider_vegetables3.jpeg"),
          AssetImage("images/slider_vegetables4.jpg"),
          AssetImage("images/slider_vegetables5.png"),
        ],
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text("vegiFRESH"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text("Customer1"),
              accountEmail: Text("Customer1@gmail.com"),
              currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              )),
              decoration: new BoxDecoration(
                color: Colors.green,
              ),
            ),

            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Home Page"),
                  leading: Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                )),

            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("My Account"),
                  leading: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                )),

            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("My Orders"),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.green,
                  ),
                )),

            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Catagories"),
                  leading: Icon(
                    Icons.dashboard,
                    color: Colors.green,
                  ),
                )),

            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Favorites"),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.green,
                  ),
                )),
            Divider(),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Setting"),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.green,
                  ),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("About"),
                  leading: Icon(
                    Icons.help,
                    color: Colors.green,
                  ),
                )),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Categories"),
          ),
          new HorizontalList(),
        ],
      ),
    );
  }
}
