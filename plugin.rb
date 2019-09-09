# name: Discourse Topic Raw Excerpt
# about: Add excerpt_raw to Topics list serializer
# version: 0.1
# authors: Lingokids
# url: https://github.com/lingokids

enabled_site_setting :discourse_topic_raw_excerpt_enabled

PLUGIN_NAME ||= "DiscourseTopicRawExcerpt".freeze

after_initialize do
  add_to_serializer :listable_topic, :excerpt_raw do
    object.excerpt
  end
end
