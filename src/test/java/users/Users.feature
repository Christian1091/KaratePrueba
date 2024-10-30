Feature: Prueba Tecnica Karate

  Background:
    * def urlBase = 'https://petstore.swagger.io/v2/user'
    * def urlPath = '/createWithList'
    * def createUser = read ('createUser.json')
    * def updateUser = read ('updateUser.json')
    * def searchUser = 'Pepito Tobar'
    * def searchUpdateUser = 'Juan Perez'

  # CREAR USUARIO
  Scenario: create a user
    Given url urlBase + urlPath
    And request createUser
    * print "Se envía trama para crear usuario"
    * print createUser
    When method post
    Then status 200

    #BUSCAR USUARIO
  Scenario: get user
    Given url urlBase
    And path searchUser
    * print "Se busca el usuario"
    * print searchUser
    When method get
    Then status 200

    # ACTUALIZAR USUARIO
  Scenario: update user
    Given url urlBase
    And path searchUser
    And request updateUser
    * print "Se envía trama para actualizar usuario"
    * print updateUser
    When method put
    Then status 200

    # BUSCAR USUARIO ACTUALIZADO
  Scenario: get update user
    Given url urlBase
    And path searchUpdateUser
    * print "Se busca el usuario actualizado"
    * print searchUpdateUser
    When method get
    Then status 200

    # ELIMINAR USUARIO
  Scenario: delete user
    Given url urlBase
    And path searchUpdateUser
    * print "Se elimina el usuario"
    * print searchUpdateUser
    When method delete
    Then status 200