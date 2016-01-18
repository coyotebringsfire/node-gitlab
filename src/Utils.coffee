class Utils
  @parseProjectId: (projectId) =>

    if typeof projectId is "number"
      return projectId # Do nothing
    else if projectId.indexOf("/") isnt -1
      projectId = encodeURIComponent(projectId)
    else
      projectId = parseInt(projectId)

  @parseBuildId: (buildId) =>
    if typeof buildId is "number"
      return buildId # Do nothing
    else if buildId.indexOf("/") isnt -1
      buildId = encodeURIComponent(buildId)
    else
      buildId = parseInt(buildId)

module.exports = Utils
