public with sharing class HelloAction {
    @InvocableMethod(label='Say Hello')
    public static List<OutputParameters> bulkInvoke(List<InputParameters> inputs) {
        List<OutputParameters> outputs = new List<OutputParameters>();
        for (InputParameters input: inputs) {
        	OutputParameters output = invoke(input);
            outputs.add(output);
        }
        return outputs;
    }
    
    private static OutputParameters invoke(InputParameters input) {
        OutputParameters output = new OutputParameters();
        output.message = 'Hello ' + input.name + '!';
        return output;
    }
    
    public class InputParameters {
        @InvocableVariable(required=true)
        public String name;
    }

    public class OutputParameters {
        @InvocableVariable
        public String message;
    }
}