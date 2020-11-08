# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

articles = Article.create([
  {
    title: "Test Post",
    body: "When the sunlight strikes raindrops in the air, they act like a prism and form a rainbow. The rainbow is a division of white light into many beautiful colors. These take the shape of a long round arch, with it’s path high above, and it’s two ends apparently beyond the horizon. There is, according to legend, a boiling pot of a gold at one end. People look, but no one ever finds it. When a man looks for something beyond his reach, his friends say he is looking for the pot of gold at the end of the rainbow.",
    author: "Tester",
  },
  {
    title: "Lorem Ipsum",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod diam et tellus tincidunt cursus. Suspendisse maximus lectus id sapien eleifend, ac vulputate lorem varius. Curabitur vestibulum fringilla odio, in sagittis dui iaculis at. Nullam at efficitur diam. Aenean ultrices ex leo, viverra ultricies massa dignissim quis. Curabitur ultricies nisi vitae nulla facilisis pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras porttitor sapien ut convallis sagittis. Nulla quis vehicula ligula. Donec eros lectus, euismod quis dictum quis, posuere sed nisi. Proin in suscipit erat. Aenean hendrerit elementum ligula, a pulvinar ante pharetra eget. Donec ut massa quis dui fermentum vehicula. Aliquam viverra iaculis augue, ut vulputate odio convallis at.

    Nulla vitae lectus mi. Sed mollis, justo vel faucibus tempus, arcu risus mollis leo, sed sagittis ligula sapien non justo. Ut varius fermentum sapien, ac ornare libero interdum et. Quisque dapibus, magna vitae pellentesque auctor, eros tellus venenatis dui, vel porta enim diam luctus ante. Quisque pellentesque vitae dui ut scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi molestie pellentesque nisi et condimentum. Vivamus facilisis scelerisque massa, fermentum aliquam lectus malesuada a. Suspendisse suscipit ipsum nec quam vehicula, at aliquam sapien pharetra. Quisque vitae erat congue, vulputate nibh et, aliquet dui. Vivamus eu augue eget ex euismod faucibus. Mauris eget tincidunt orci. Fusce mi erat, vehicula a dictum tempor, mollis euismod massa.
    
    Morbi vel rutrum elit, vitae maximus lectus. Mauris facilisis sem augue, sed sagittis lectus fermentum a. Donec sagittis cursus elit, vitae posuere lectus tincidunt eu. Pellentesque pretium venenatis dolor, at faucibus lectus commodo vitae. Aenean iaculis tortor magna, ut suscipit nisi tempus sit amet. Phasellus magna dui, aliquam mattis mi a, ultrices rhoncus sapien. Proin eu magna purus. Nam rhoncus nisl a sapien volutpat faucibus. Morbi blandit metus lobortis massa egestas, vitae ornare diam sollicitudin.
    
    Nunc pellentesque eu purus at luctus. Proin porttitor volutpat lorem, in tempor justo congue a. Praesent ut lorem a arcu egestas suscipit ac ut augue. Proin semper a sem consectetur mollis. Praesent venenatis viverra purus, sit amet posuere velit ullamcorper in. Proin sed enim ac tortor elementum convallis. Vivamus eu congue lacus, et condimentum tellus. Quisque aliquet odio magna, eget molestie urna tempor ac. Vestibulum malesuada porta iaculis.
    
    Duis quis pretium tellus. Quisque luctus mi ex, ac dapibus felis tincidunt pellentesque. Nunc pretium porta est, in malesuada arcu posuere in. Donec ut enim a enim posuere placerat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur porttitor quam sit amet ligula dignissim volutpat. Donec sed dolor congue, semper ex eu, tempor orci. Pellentesque nec leo lacus. Curabitur bibendum tellus risus, vel tempor odio aliquam eu. Nullam posuere nisi non blandit tincidunt. Nunc quis eleifend lectus, a tincidunt ex.",
    author: "Tester",
  },
])

comments = Comment.create([
  {
    body: "Nice",
    author: "Dude",
    score: 5,
    article: articles.first,
  },
  {
    body: "Good job",
    author: "Dudette",
    score: 4,
    article: articles.first,
  },
])