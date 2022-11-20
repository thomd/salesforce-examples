public class FetchObjectsController {

  @AuraEnabled
  public static Map<String, String> getAllObject() {

    Map<String,String> returnObjectMap = new Map<String,String>();
    Map<String, Schema.SObjectType> objectMap = Schema.getGlobalDescribe();
    List<Schema.SObjectType> objectMapValues = objectMap.Values();
    System.debug('All Objects ' + objectMapValues);

    for (Schema.SObjectType objType : objectMapValues) {
      String key = objType.getDescribe().getName();
      String value = objType.getDescribe().getLabel();
      returnObjectMap.put(key,value);
    }
    System.debug(returnObjectMap);
    if (returnObjectMap != null && returnObjectMap.size() > 0) {
      return returnObjectMap;
    } else {
      return null;
    }
  }

  @AuraEnabled
  public static List<String> getAllfields(String objectName) {
    List<String> allFields = new List<String>();

    Map<String, Schema.SObjectType> objectMap = Schema.getGlobalDescribe();
    SObjectType objType = objectMap.get(objectName);

    Map<String,Schema.SObjectField> objTypeFields = objType.getDescribe().fields.getMap();
    if (!objTypeFields.isEmpty()) {
      for (String fieldName: objTypeFields.keySet()) {
        String fieldLabel = objTypeFields.get(fieldName).getDescribe().getLabel();
        allFields.add(fieldLabel);
      }
    }
    System.debug(allFields);
    return allFields;
  }
}
