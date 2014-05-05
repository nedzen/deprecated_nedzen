#= require 'jquery'
#= require 'bootstrap'


handleFilterTagsKeyUp = (e)->
  input = $ e.target
  filterTags input.val()

filterTags = (text)->
  $('#sidebar-tags-list > li').each ->
    self = $ @
    if self.text().indexOf(text) == -1
      self.addClass 'hidden'
    else
      self.removeClass 'hidden'

handleShowAllLink = (e)->
  $('#sidebar-tags-list > li').removeClass 'hidden'
  $('.show-all-tags-link').remove()

$ ->
  $('[data-toggle=tooltip]').tooltip()
  $('form#tag-filter-form')
  .on('submit', no)
  .find('input')
  .on('keyup', handleFilterTagsKeyUp)
  $('.article-body > table').addClass 'table-bordered table'
  $('.show-all-tags-link').on('click', handleShowAllLink)