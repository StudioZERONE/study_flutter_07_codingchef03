void testFuture() async {
  print('--- testFuture Start ----------------------');
  print('Fetching user order...');
  print(await createOrderMessage());
  print('--- testFuture End ----------------------');
}

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => 'Large Latte',
  );
}
