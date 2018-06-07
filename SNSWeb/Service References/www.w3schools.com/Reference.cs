//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SNSWeb.www.w3schools.com {
    
}


[System.ServiceModel.ServiceContractAttribute(Namespace="SNSWeb.www.w3schools.com", ConfigurationName="TempConvertSoap")]
public interface TempConvertSoap {
    
    [System.ServiceModel.OperationContractAttribute(Action="*", ReplyAction="https://www.w3schools.com/xml/FahrenheitToCelsius")]
    string FahrenheitToCelsius(string Fahrenheit);
    
    [System.ServiceModel.OperationContractAttribute(Action="*", ReplyAction="https://www.w3schools.com/xml/FahrenheitToCelsius", AsyncPattern=true)]
    System.IAsyncResult BeginFahrenheitToCelsius(string Fahrenheit, System.AsyncCallback asyncCallback, object userState);
    
    string EndFahrenheitToCelsius(System.IAsyncResult result);
    
    [System.ServiceModel.OperationContractAttribute(Action="*", ReplyAction="https://www.w3schools.com/xml/CelsiusToFahrenheit")]
    string CelsiusToFahrenheit(string Celsius);
    
    [System.ServiceModel.OperationContractAttribute(Action="*", ReplyAction="https://www.w3schools.com/xml/CelsiusToFahrenheit", AsyncPattern=true)]
    System.IAsyncResult BeginCelsiusToFahrenheit(string Celsius, System.AsyncCallback asyncCallback, object userState);
    
    string EndCelsiusToFahrenheit(System.IAsyncResult result);
}

public interface TempConvertSoapChannel : TempConvertSoap, System.ServiceModel.IClientChannel {
}

public class TempConvertSoapClient : System.ServiceModel.ClientBase<TempConvertSoap>, TempConvertSoap {
    
    public TempConvertSoapClient() {
    }
    
    public TempConvertSoapClient(string endpointConfigurationName) : 
            base(endpointConfigurationName) {
    }
    
    public TempConvertSoapClient(string endpointConfigurationName, string remoteAddress) : 
            base(endpointConfigurationName, remoteAddress) {
    }
    
    public TempConvertSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
            base(endpointConfigurationName, remoteAddress) {
    }
    
    public TempConvertSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress endpoint) : 
            base(binding, endpoint) {
    }
    
    public string FahrenheitToCelsius(string Fahrenheit) {
        return base.Channel.FahrenheitToCelsius(Fahrenheit);
    }
    
    public System.IAsyncResult BeginFahrenheitToCelsius(string Fahrenheit, System.AsyncCallback asyncCallback, object userState) {
        return base.Channel.BeginFahrenheitToCelsius(Fahrenheit, asyncCallback, userState);
    }
    
    public string EndFahrenheitToCelsius(System.IAsyncResult result) {
        return base.Channel.EndFahrenheitToCelsius(result);
    }
    
    public string CelsiusToFahrenheit(string Celsius) {
        return base.Channel.CelsiusToFahrenheit(Celsius);
    }
    
    public System.IAsyncResult BeginCelsiusToFahrenheit(string Celsius, System.AsyncCallback asyncCallback, object userState) {
        return base.Channel.BeginCelsiusToFahrenheit(Celsius, asyncCallback, userState);
    }
    
    public string EndCelsiusToFahrenheit(System.IAsyncResult result) {
        return base.Channel.EndCelsiusToFahrenheit(result);
    }
}
namespace www.w3schools.com.xml {
    using System.Runtime.Serialization;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="FahrenheitToCelsius", Namespace="https://www.w3schools.com/xml/")]
    public partial class FahrenheitToCelsius : object, System.Runtime.Serialization.IExtensibleDataObject {
        
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        private string FahrenheitField;
        
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false)]
        public string Fahrenheit {
            get {
                return this.FahrenheitField;
            }
            set {
                this.FahrenheitField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="FahrenheitToCelsiusResponse", Namespace="https://www.w3schools.com/xml/")]
    public partial class FahrenheitToCelsiusResponse : object, System.Runtime.Serialization.IExtensibleDataObject {
        
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        private string FahrenheitToCelsiusResultField;
        
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false)]
        public string FahrenheitToCelsiusResult {
            get {
                return this.FahrenheitToCelsiusResultField;
            }
            set {
                this.FahrenheitToCelsiusResultField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="CelsiusToFahrenheit", Namespace="https://www.w3schools.com/xml/")]
    public partial class CelsiusToFahrenheit : object, System.Runtime.Serialization.IExtensibleDataObject {
        
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        private string CelsiusField;
        
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false)]
        public string Celsius {
            get {
                return this.CelsiusField;
            }
            set {
                this.CelsiusField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="CelsiusToFahrenheitResponse", Namespace="https://www.w3schools.com/xml/")]
    public partial class CelsiusToFahrenheitResponse : object, System.Runtime.Serialization.IExtensibleDataObject {
        
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        private string CelsiusToFahrenheitResultField;
        
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false)]
        public string CelsiusToFahrenheitResult {
            get {
                return this.CelsiusToFahrenheitResultField;
            }
            set {
                this.CelsiusToFahrenheitResultField = value;
            }
        }
    }
}
