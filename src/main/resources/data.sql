
# WITH non_unique (id) AS(SELECT u1.id FROM user_entity AS u1 WHERE exists (SELECT * FROM user_entity AS u2 WHERE u1.email = u2.email and  u1.id <> u2.id and u1.id > u2.id))
# DELETE FROM user_entity WHERE id in (select id from non_unique );

insert into blog_post_entity (id, image_src, intro, mark_down_src, title)
select 1, 'https://www.advantageservices.net/photos/articles/correct/gettyimages-881467948.jpg', '<div class="featured-text text-center text-lg-left">
      <h4>Intro to the making of my website</h4>
      <p class="text-black-50 mb-0">Learn all about how I made this website, and what technologies were used. This is just a big summary of all the technologies.</p>
    </div>',
       'https://ppt-productions-blog-posts.s3.us-east-2.amazonaws.com/testIntro.md'
        , '<i>Intro to the making of my website</i>'
where not exists (SELECT * FROM blog_post_entity WHERE id = 1) ;


