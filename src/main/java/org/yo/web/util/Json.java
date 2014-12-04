package org.yo.web.util;

import org.codehaus.jackson.annotate.JsonRawValue;
import org.codehaus.jackson.annotate.JsonValue;

public class Json {

    private final String value;

    public Json(String value) {
        this.value = value;
    }

    @JsonValue
    @JsonRawValue
    public String value() {
        return value;
    }
}