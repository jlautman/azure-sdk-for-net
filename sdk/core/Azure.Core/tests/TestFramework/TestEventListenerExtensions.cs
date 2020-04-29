﻿// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

using System.Diagnostics.Tracing;

namespace Azure.Core.Testing
{
    public static class TestEventListenerExtensions
    {
        public static T GetProperty<T>(this EventWrittenEventArgs data, string propName)
            => (T)data.Payload[data.PayloadNames.IndexOf(propName)];
    }
}
