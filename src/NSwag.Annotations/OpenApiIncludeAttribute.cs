
using System;

namespace NSwag.Annotations
{
    // iiQ Custom
    /// <summary>Includes an action method from the generated Swagger specification ( overrides "Exclude" ).</summary>
    [AttributeUsage(AttributeTargets.Property | AttributeTargets.Method | AttributeTargets.Class | AttributeTargets.Parameter)]
    public class OpenApiIncludeAttribute : Attribute
    {
    }
}