namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
      49.times do |n|
        title = "Lorem Ipsum #{n+1}"
        content= "

Fusce non lacinia quam. Duis tempor varius orci, eu tempus elit pretium sed. Nam id sem leo. Nunc ut rhoncus ligula, eget blandit turpis. Vestibulum suscipit non quam vitae facilisis. Sed enim quam, sagittis vel aliquet eu, commodo sit amet felis. Sed consectetur, purus et semper consequat, elit tortor bibendum turpis, ornare pharetra est augue eu magna. Suspendisse sollicitudin luctus nulla eget fringilla. Donec quis sapien sapien. Aenean id tellus blandit, fringilla nulla ut, tincidunt lectus. Vivamus mauris odio, venenatis vel tincidunt interdum, vehicula in urna. Quisque in fermentum arcu, sit amet fermentum dui. Sed scelerisque lacus vitae erat venenatis, quis accumsan leo tempor. Donec id urna id diam rhoncus posuere. Etiam mattis, nunc ut luctus ultricies, turpis tortor commodo tortor, ut congue mi libero vel felis.

Morbi vestibulum lectus blandit rutrum porta. Maecenas ac augue placerat, adipiscing metus et, fringilla odio. Sed eu elit porta, dictum metus ac, fringilla justo. Pellentesque tincidunt sed magna nec tincidunt. Proin vitae ante a felis vulputate consectetur at sed elit. Donec quis mi sapien. Phasellus eget eros rhoncus, rutrum sem in, mattis nisi. Vestibulum a accumsan justo. Sed ligula massa, gravida vitae mi vel, imperdiet malesuada dolor. Phasellus diam magna, iaculis non tristique vitae, auctor ac elit.

Morbi aliquet rutrum gravida. Sed quis gravida diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque interdum neque vel ante bibendum auctor. In ac consequat tellus. Fusce erat sapien, tempus sed semper at, ultricies quis massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ut velit non massa sagittis vestibulum. Aenean tristique diam vel sapien cursus, et gravida leo pellentesque. Proin tortor ante, euismod ac purus hendrerit, porta pretium turpis. Vestibulum pulvinar, massa a euismod accumsan, ligula mauris scelerisque massa, vel egestas sem leo sed sapien. Integer lobortis nibh id nisl hendrerit sollicitudin. Maecenas a interdum nisi, eu tincidunt magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean scelerisque, ante ac sollicitudin condimentum, mauris est interdum velit, et sodales risus sapien ac enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Suspendisse imperdiet ultricies risus, et vulputate lectus vulputate nec. Phasellus molestie dictum orci, at tristique eros molestie vel. Nulla ligula nisi, ornare at ligula in, ultricies condimentum mi. Praesent accumsan leo sit amet metus accumsan placerat. Morbi porta justo tempor pretium viverra. Proin in porttitor risus. Sed sit amet felis fringilla, suscipit libero id, ullamcorper erat. Vestibulum adipiscing risus sed volutpat eleifend. Aenean libero quam, dapibus sed dignissim eget, faucibus eu mauris. Morbi ut placerat nunc, id blandit tellus. Pellentesque dui sapien, ornare non accumsan a, dapibus eu ipsum. Quisque erat dolor, dictum ut eros vulputate, lacinia ultrices dui. Quisque et purus ullamcorper massa bibendum convallis sit amet ornare ante. Nunc in augue sit amet sem dictum tincidunt eget at magna. Cras cursus feugiat diam et scelerisque. Praesent ac tortor eu mauris egestas condimentum at vel ligula.

Nulla facilisi. Nullam viverra eros nec tellus ultrices rutrum vel sed enim. Aenean imperdiet turpis id leo vehicula gravida. Nunc fringilla ligula eu risus accumsan, et volutpat sem pretium. Aenean faucibus sit amet augue at varius. Aliquam erat volutpat. Donec ut molestie purus, nec dictum lorem. Nulla faucibus enim tempor velit tempor, eu pellentesque est euismod. "
        Blog.create!(title: title,
                  content: content)
      end
  end
end
