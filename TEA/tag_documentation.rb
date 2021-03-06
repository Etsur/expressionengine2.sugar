#!/usr/bin/env ruby
#
# Lookup current word as a tag in the ExpressionEngine User Manual

tags = {
  "exp:channel"                      => "modules/channel/index.html",
  "exp:channel:entries"              => "modules/channel/channel_entries.html",
  "exp:channel:info"                 => "modules/channel/info.html",
  "exp:channel:next_entry"           => "modules/channel/entry_linking.html",
  "exp:channel:prev_entry"           => "modules/channel/entry_linking.html",
  "exp:channel:month_links"          => "modules/channel/archive_month_links.html",
  "exp:channel:calendar"             => "modules/channel/calendar.html",
  "exp:channel:categories"           => "modules/channel/categories.html",
  "exp:channel:category_archive"     => "modules/channel/category_archive.html",
  "exp:channel:category_heading"     => "modules/channel/category_heading.html",
  "exp:channel:entry_form"           => "modules/channel/entry_form.html",
  "related_entries"                 => "modules/channel/related_entries.html",
  "reverse_related_entries"         => "modules/channel/reverse_related_entries.html",
  "exp:comment"                     => "modules/comment/index.html",
  "exp:comment:entries"             => "modules/comment/entries.html",
  "exp:comment:preview"             => "modules/comment/preview.html",
  "exp:comment:form"                => "modules/comment/form.html",
  "exp:ip_to_nation:world_flags"    => "modules/ip_to_nation/index.html",
  "exp:referrer"                    => "modules/referrer/index.html",
  "exp:rss:feed"                    => "modules/rss/index.html",
  "exp:search"                      => "modules/search/index.html",
  "exp:search:simple_form"          => "modules/search/index.html#simple",
  "exp:search:advanced_form"        => "modules/search/index.html#advanced",
  "exp:search:search_results"       => "modules/search/index.html#results",
  "exp:stats"                       => "modules/statistics/index.html",
  "exp:trackback:entries"           => "modules/trackback/entries.html",
  "exp:trackback:url"               => "modules/trackback/url.html",
  "exp:trackback"                   => "modules/trackback/index.html",
  "exp:forum"                       => "modules/forum/index.html",
  "exp:forum:topic_titles"          => "modules/forum/recent_forum_topics.html",
  "exp:email"                       => "modules/email/index.html",
  "exp:email:contact_form"          => "modules/email/contact_form.html",
  "exp:email:tell_a_friend"         => "modules/email/tellafriend.html",
  "exp:gallery"                     => "modules/gallery/index.html",
  "exp:gallery:entries"             => "modules/gallery/gallery_entries.html",
  "exp:gallery:categories"          => "modules/gallery/categories.html",
  "exp:gallery:category_name"       => "modules/gallery/category_name.html",
  "exp:gallery:category_list"       => "modules/gallery/category_list.html",
  "exp:gallery:comments"            => "modules/gallery/comments.html",
  "exp:gallery:next_entry"          => "modules/gallery/next_prev_entries.html",
  "exp:gallery:prev_entry"          => "modules/gallery/next_prev_entries.html",
  "exp:mailinglist:form"            => "modules/mailing_list/index.html",
  "exp:member:custom_profile_data"  => "modules/member/custom_profile_data.html",
  "exp:member:login_form"           => "modules/member/login_form.html",
  "exp:member:ignore_list"          => "modules/member/ignore_list.html",
  "exp:member"                      => "modules/member/index.html",
  "exp:moblog:check"                => "modules/moblog/check_moblog.html",
  "exp:moblog"                      => "modules/moblog/index.html",
  "exp:query"                       => "modules/query/index.html",
  "exp:updated_sites:pings"         => "modules/updated_sites/displaying_pings.html",
  "assign_variable"                 => "templates/globals/assign_variable.html",
  "if"                              => "templates/globals/conditionals.html",
  "if:else"                         => "templates/globals/conditionals.html",
  "if:elseif"                       => "templates/globals/conditionals.html",
  "embed"                           => "templates/embedding_templates.html",
  "format"                          => "templates/date_variable_formatting.html",
  "path"                            => "templates/globals/path.html",
  "date_heading"                    => "modules/channel/variable_pairs.html#var_date_heading",
  "date_footer"                     => "modules/channel/variable_pairs.html#var_date_footer",
  "categories"                      => "modules/channel/variable_pairs.html#var_categories",
  "stylesheet"                      => "templates/globals/stylesheet.html",
  "paginate"                        => "modules/channel/pagination_page.html",
  "exp:simple_commerce:purchase"    => "modules/simple_commerce/sc_purchase.html",
  "exp:wiki"                        => "modules/wiki/wiki_tag.html",
  "wiki:files"                      => "modules/wiki/wiki_templates_special_files.html",
  "exp:emoticon"                    => "modules/emoticon/index.html"
}

tag_name = STDIN.readlines.to_s.gsub("\00","")

tag_url = tags[tag_name]

url = "http://www.expressionengine.com/user_guide/" + tag_url

system("open #{url}")

print tag_name