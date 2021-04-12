___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "URL Components Parser",
  "description": "Given a valid URL and a component name, this template will parse the URL and extract the component from the URL.",
  "brand": {
    "id": "Justia",
    "displayName": "Justia",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAABoVBMVEUGNXr////7/P0KOHwJN3wINnv+/v4AJ3EHNnv9/v4IN3sJOHz+/v8AKHEALHT8/P39/f4HNnr8/f4AKnMAL3YAKHIAK3MEMnhKbJ6ZrMn8/f0AK3T+//+YrMgBLnYCMXhIap13kLaOo8MJN3sEMXgFM3kGNHoIN3wjTYoAKXIAJnAALXWcr8r29/r6+/0AJW8AKnIBK3MBL3YAMHcEL3YDMHYCMXcEMHcEMXcDMngDM3gENHkGM3kFNHkFNXoHNXoGNnoLNnsNOHwOOHwNOX0MO34RPoASQIEYQoIYQoMYQ4QkTYpDZptCZpoYRIQbRYQcR4YfR4YgSogkToopUY0qUo0zWZI1W5M4XZU6XpU+Y5g/ZJlCY5hDZ5tFaJxGaJxGaZxNbqBRcqJUc6NefalnhK5tibFyjLNzjbSFnL6PpMOVqseXqseXq8iZrMiarcmbrsmdr8qjtc6mt9Cywda2xNi5xtq7x9rBzN7Ez9/H0uHP2ObQ2eba4evc4+zh5u/j6fDm6/Ln7PLs7/Xt8fXw8vfw8/f3+fv4+vz5+vz6+/yJ4WSoAAABrElEQVR4Xu2VVa/cMBQG+9lBhmW+zMzMZWZmZmZm+NV1lL0rVa20Th4rj5THGZ1Yts4WPgQCn26SzF/JqbbKsFW7M4kvp48OVO4VCoXK/Tu7alr8QHv2HBQwyiCH03KCQGkvfhHGUPB9d7LAnsYE/0FABERABERABM4mCGj+H4vFAsOKETA6uhpL0Oy9BK8e6OEMdFcPrueMeoCqrSBRYPDQuMbjm+kdHwYyC7QeKD1HEQwd77fN+Tzz59ZeAY9XU9203ZC29p1BRICXXH+gdU0/AXHx5rRjO/2jw0feQUcIQZtNm/u+nH0IAgRQnl09dTzf9hUKQqCjJSs1D8h9N0Mf8PTIU/RN/+3GfPMjMJwbcBFRJAo89kUQXLdNnnv3AD/xD1y8pos+xxEsTT7CkP6XH+DHSUfiusSdE7ehR4M3UAjcy70m5zNYHrnyGYrrKuW6XSQ6Pp5nPie+lNl/6xsswAsYFsoYvLszxXxuzBn1wLWnnzyEWF9etPZkOpgfA9mcUp3txy7kL+ZbTuyrqmNm7H2gUWO2PxXi1GTK9ARohiSZkmRo3EZyBILfSzxK15953BYAAAAASUVORK5CYII="
  },
  "containerContexts": [
    "WEB"
  ],
  "categories": ["UTILITY"]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "url",
    "simpleValueType": true,
    "valueHint": "e.g. https://my.domain.com/and-this-is-my-path?test\u003d1",
    "displayName": "URL",
    "help": "Enter a valid URL to extract a component from it. You can enter a URL string or a variable name such as \u003cstrong\u003e{{ Page URL }}\u003c/strong\u003e (\u003ca href\u003d\"https://support.google.com/tagmanager/answer/7182738?hl\u003den#pages\"\u003ebuilt-in variable\u003c/a\u003e). If an invalid URL is provided, undefined will be returned."
  },
  {
    "type": "SELECT",
    "name": "component",
    "displayName": "URL Component",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "protocol",
        "displayValue": "Protocol"
      },
      {
        "value": "domain",
        "displayValue": "Domain"
      },
      {
        "value": "rootDomain",
        "displayValue": "Root Domain"
      },
      {
        "value": "subdomain",
        "displayValue": "Subdomain"
      },
      {
        "value": "tld",
        "displayValue": "Top-Level Domain (TLD)"
      },
      {
        "value": "path",
        "displayValue": "Path"
      },
      {
        "value": "query",
        "displayValue": "Query String"
      },
      {
        "value": "hash",
        "displayValue": "Hash"
      },
      {
        "value": "port",
        "displayValue": "Port"
      },
      {
        "value": "url",
        "displayValue": "URL"
      },
      {
        "value": "object",
        "displayValue": "Full Object"
      }
    ],
    "simpleValueType": true,
    "help": "See details in our \u003ca href\u003d\"https://github.com/justia/gtm-url-components-parser-variable/\"\u003eGithub page\u003c/a\u003e."
  },
  {
    "type": "CHECKBOX",
    "name": "ccSLD",
    "checkboxText": "Country code second-level domain",
    "simpleValueType": true,
    "help": "Many domains end with classic top-level domains such as \u003cem\u003e.com\u003c/em\u003e, \u003cem\u003e.net\u003c/em\u003e, \u003cem\u003e.org\u003c/em\u003e, etc. However there are country top-level domains such as \u003cem\u003e.mx\u003c/em\u003e and \u003cem\u003e.uk\u003c/em\u003e. Such country code top-level domains usually have a \u003ca href\u003d\"https://en.wikipedia.org/wiki/Country_code_second-level_domain\"\u003ecountry code second-level domain (ccSLD)\u003c/a\u003e, such as \u003cem\u003e.com.mx\u003c/em\u003e and \u003cem\u003e.ac.uk\u003c/em\u003e.\nBy default, this tool assumes the URL does not contain a ccSLD. Check this box in case it does (for example, for domains such as https://my.domain.co.uk and https://www.domain.com.mx)."
  },
  {
    "type": "CHECKBOX",
    "name": "decodeUrl",
    "checkboxText": "Decode URL",
    "simpleValueType": true,
    "help": "Check this box if you would like to decode the URL before parsing it."
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// APIs
const parseUrl = require('parseUrl');
const decodeUri = require('decodeUriComponent');
const makeNumber = require('makeNumber');
const Math = require('Math');
// const log = require('logToConsole');

// Inputs
const sourceUrl = data.decodeUrl ? decodeUri(data.url) : data.url;
const url = parseUrl(sourceUrl);
const component = data.component;
const ccSLD = data.ccSLD || false;

// Data Validation
if (typeof url === 'undefined') {
  return undefined;
}

// Logic
const parts = url.hostname.split('.');
const totalParts = parts.length;
// this actually works for N number of tld nodes
const tldNodes = ccSLD ? 2 : 1;
const result = {};

result.protocol = url.protocol;
result.domain = url.hostname;
result.rootDomain = extractPartFromDomain(parts, tldNodes + 1, totalParts, true);
result.subdomain = extractPartFromDomain(parts, tldNodes + 1, totalParts, false);
result.tld = extractPartFromDomain(parts, tldNodes, totalParts, true);
result.path = url.pathname;
result.query = url.search;
result.hash = url.hash;
result.port = url.port;
result.url = url.href;

// Variables must return a value.
if (component === 'object') {
  return result;
}

return result[component];


//****************************************
// Functions
function isIp(parts) {
  // apparently, there's no support for regex :(
  return makeNumber(parts.join('')) == parts.join('');
}

function extractPartFromDomain(parts, tldNodes, totalNodes, extractSuffix) {
  if (isIp(parts)) {
    return parts.join('.');
  }
  
  let filterSuffix = (index) => {
    return (index + tldNodes) >= totalNodes;
  };
  
  let filterPrefix = (index) => {
    return (totalNodes - index - tldNodes) > 0; 
  };
  
  return parts.filter((node, i) => { 
    return extractSuffix ? filterSuffix(i) : filterPrefix(i);
  }).join('.');
}


___TESTS___

scenarios:
- name: Extract protocol
  code: |
    const mockData = {
      url: 'https://en.wikipedia.org/wiki/Top-level_domain',
      component: 'protocol'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('https:');
- name: Extract domain
  code: |
    const mockData = {
      url: 'https://en.wikipedia.org/wiki/Top-level_domain',
      component: 'domain'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('en.wikipedia.org');
- name: Extract root domain
  code: |
    const mockData = {
      url: 'https://en.wikipedia.org/wiki/Top-level_domain',
      component: 'rootDomain'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('wikipedia.org');
- name: Extract root domain from localhost
  code: |
    const mockData = {
      url: 'https://localhost/wiki/Top-level_domain',
      component: 'domain'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('localhost');
- name: Extract root domain from localhost with ccSLD
  code: |
    const mockData = {
      url: 'https://localhost/wiki/Top-level_domain',
      component: 'domain',
      ccSLD: true
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('localhost');
- name: Extract root domain from IP
  code: |
    const mockData = {
      url: 'http://192.158.0.2/wiki/Top-level_domain',
      component: 'domain',
      ccSLD: true
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('192.158.0.2');
- name: Extract root domain with ccSLD
  code: |
    const mockData = {
      url: 'https://en.wikipedia.co.uk/wiki/Top-level_domain',
      component: 'rootDomain',
      ccSLD: true
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('wikipedia.co.uk');
- name: Extract subdomain
  code: |
    const mockData = {
      url: 'https://en.wikipedia.org/wiki/Top-level_domain',
      component: 'subdomain'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('en');
- name: Extract double subdomain
  code: |
    const mockData = {
      url: 'https://en.sub.wikipedia.org/wiki/Top-level_domain',
      component: 'subdomain'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('en.sub');
- name: Extract subdomain with ccSLD
  code: |
    const mockData = {
      url: 'https://en.wikipedia.co.uk/wiki/Top-level_domain',
      component: 'subdomain',
      ccSLD: true
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('en');
- name: Extract top level domain (tld)
  code: |
    const mockData = {
      url: 'https://en.wikipedia.org/wiki/Top-level_domain',
      component: 'tld'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('org');
- name: Extract path
  code: |
    const mockData = {
      url: 'https://en.wikipedia.org/wiki/Top-level_domain?foo=bar',
      component: 'path'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('/wiki/Top-level_domain');
- name: Extract query string
  code: |
    const mockData = {
      url: 'https://en.wikipedia.org/wiki/Top-level_domain?foo=bar',
      component: 'query'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo("?foo=bar");
- name: Extract hash
  code: |
    const mockData = {
      url: 'https://en.wikipedia.org/wiki/Top-level_domain#foo',
      component: 'hash'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('#foo');
- name: Test wrong component
  code: |-
    const mockData = {
      url: 'https://en.wikipedia.org/wiki/Top-level_domain',
      component: 'wrong'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isUndefined();
- name: Test invalid URL
  code: |-
    const mockData = {
      url: 'https//en.wikipedia.org/wiki/Stanford_Cardinal_women%27s_basketball?test=hello',
      component: 'wrong'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isUndefined();
- name: Extract Full Object
  code: |
    const mockData = {
      url: 'https://en.wikipedia.co.uk/wiki/Top-level_domain?foo=bar#yes',
      component: 'object',
      ccSLD: true
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertApi('parseUrl').wasCalled();
    assertThat(result.url).isEqualTo(mockData.url);
    assertThat(result.rootDomain).isEqualTo("wikipedia.co.uk");
    assertThat(result.tld).isEqualTo("co.uk");
    assertThat(result.subdomain).isEqualTo("en");
- name: Test encoded URL without decode
  code: |+
    const mockData = {
      url: 'https://en.wikipedia.org/wiki/foo%27bar',
      component: 'object'
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertApi('decodeUri').wasNotCalled();
    assertThat(result.url).isEqualTo("https://en.wikipedia.org/wiki/foo%27bar");

- name: Test encoded URL with decode
  code: |+
    const mockData = {
      url: 'https://en.wikipedia.org%2Fwiki%2Ffo+o%27bar_foo%3Ffoo%3Dba+roo%26bar%3Dfoo+bar',
      component: 'object',
      decodeUrl: true
    };

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertApi('decodeUriComponent').wasCalled();
    assertThat(result.url).isEqualTo("https://en.wikipedia.org/wiki/fo+o'bar_foo?foo=ba+roo&bar=foo+bar");

setup: ''


___NOTES___

Created on 4/12/2021, 12:00:04 PM


