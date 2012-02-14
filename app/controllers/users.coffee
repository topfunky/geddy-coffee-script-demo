Users = ->
  @respondsWith = ['html', 'json', 'js', 'txt']

  @index = (req, resp, params) ->
    @respond({params: params})

  @add = (req, resp, params) ->
    @respond({params: params})

  @create = (req, resp, params) ->
    # Save the resource, then display index page
    @redirect({controller: @name})

  @show = (req, resp, params) ->
    @respond({params: params})

  @edit = (req, resp, params) ->
    @respond({params: params})

  @update = (req, resp, params) ->
    # Save the resource, then display the item page
    @redirect({controller: @name, id: params.id})

  @remove = (req, resp, params) ->
    @respond({params: params})

  @

exports.Users = Users
