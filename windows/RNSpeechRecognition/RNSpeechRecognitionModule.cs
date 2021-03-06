using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNSpeechRecognition
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNSpeechRecognitionModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNSpeechRecognitionModule"/>.
        /// </summary>
        internal RNSpeechRecognitionModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNSpeechRecognition";
            }
        }
    }
}
