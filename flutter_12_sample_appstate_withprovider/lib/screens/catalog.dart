import 'package:flutter/material.dart';
import 'package:flutter_12_sample_appstate_withprovider/models/cart.dart';
import 'package:provider/provider.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _MyAppBar(),
          SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (_, index) => _CatalogListItem(index)),
          )
        ],
      ),
    );
  }
}

class _CatalogListItem extends StatelessWidget {
  final int index;

  _CatalogListItem(this.index) : super(key: ValueKey(index));

  @override
  Widget build(BuildContext context) {
    var item = Item(index);
    var textTheme = Theme.of(context).textTheme.title;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LimitedBox(
        maxHeight: 48,
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: Colors.primaries[index % Colors.primaries.length],
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: Text(item.name, style: textTheme)),
            SizedBox(width: 24),
            _AddButton(item: item)
          ],
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  final Item item;

  const _AddButton({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);

    return FlatButton(
      onPressed: cart.items.contains(item) ? null : () => cart.add(item),
      splashColor: Theme.of(context).primaryColor,
      child: cart.items.contains(item)
          ? Icon(Icons.check, semanticLabel: "Added")
          : Text('Add'),
    );
  }
}

class _MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text('Catalog', style: Theme.of(context).textTheme.display1),
      floating: true,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, "/cart"))
      ],
    );
  }
}
