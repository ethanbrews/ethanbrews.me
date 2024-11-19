export const onRequest = async (context) => {
  const url = new URL(context.request.url);
  
  if (url.pathname === "/registry" || url.pathname === "/registry.html") {
    return Response.redirect("https://www.myregistry.com/giftlist/ethan-and-tiffany", 301);
  }
  return new Response("Not Found", { status: 404 });
};