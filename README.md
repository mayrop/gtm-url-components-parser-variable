# Google Tag Manager Components Parser Variable

## Summary
This repository contains a [Google Tab Manager Variable template](https://developers.google.com/tag-manager/templates) that helps to parse a URL and extract a component from it. Google Tag Manager already has some [built-in variables](https://support.google.com/tagmanager/answer/7182738#pages), such as hostname and path, but there are other parts of the URL that can be extracted. It makes use of the [`parseUrl` API](https://developers.google.com/tag-manager/templates/api#parseurl).

## Usage
- Open a **Google Tag Manager** web container and click into the **Templates** from the left sidebar menu.
- In the **Variables Templates** section, click on **Search Gallery** button.
- Click on the Search Icon then type "url components parser".
- Select the **URL Components Parser** template to your workspace.
- Use the new template as needed.

## Options

### URL Variable
Can be either a static URL, or a variable, such as **{{Page URL}}**

### URL Component
This template makes use of the [parseUrl API](https://developers.google.com/tag-manager/templates/api#parseurl), and returns one of the following components:
- Protocol
- Domain
- Root Domain
- Subdomain
- Top-Level Domain (TLD).
- Path
- Query
- Hash
- Port
- URL
- Full Object

### Country Code Second-Level Domain
Many domains end with classic top-level domains such as *.com*, *.net*, *.org*, etc. However there are country top-level domains such as *.mx* and *.uk*. Such country code top-level domains usually have a [country code second-level domain (ccSLD)](https://en.wikipedia.org/wiki/Country_code_second-level_domain), such as *.com.mx* and *.ac.uk*.

By default, this template assumes the URL does not contain a ccSLD. This option can be enabled in case it does (for example, for domains such as https://my.domain.co.uk and https://www.domain.com.mx).

### Decode URL
When it is enabled, it decodes any encoded characters in the provided URI component. Makes use of the [`decodeUriComponent` API](https://developers.google.com/tag-manager/templates/api#decodeuricomponent).

## Examples

### Example 1
**URL:** `https://my.example.com:8080/foo/bar?param=val%2Cue#bar`  
**Country code second-level domain:** Unchecked  
**Decode URL:** Unchecked  
**Components:** 
- Protocol: `https:`
- Domain: `my.example.com`
- Root Domain: `example.com`
- Subdomain: `my`
- Top-Level Domain (TLD): `com`
- Path: `/foo/bar`
- Query: `?param=val%2Cue`
- Hash: `#bar`
- Port: `8080`
- URL: `https://my.example.com:8080/foo/bar?param=val%2Cue#bar`
- Full Object:
```json
{
    "protocol": "https:",
    "domain": "my.example.com",
    "rootDomain": "example.com",
    "subdomain": "my",
    "tld": "com",
    "path": "/foo/bar",
    "query": "?param=val%2Cue",
    "hash": "#bar",
    "port": "8080",
    "url": "https://my.example.com:8080/foo/bar?param=val%2Cue#bar"
}
```

### Example 2
**URL:** `https://www.domain.co.uk/my/single/path?param=val%2Cue`  
**Country code second-level domain:** Checked  
**Decode URL:** Checked  
**Components:** 

- Protocol: `https:`
- Domain: `www.domain.co.uk`
- Root Domain: `example.com`
- Subdomain: `www`
- Top-Level Domain (TLD): `co.uk`
- Path: `/my/single/path`
- Query: `?param=val,ue`
- Hash: `<empty-string>`
- Port: `<empty-string>`
- URL: `https://www.domain.co.uk/my/single/path?param=val,ue`
- Full Object:
```json
{
    "protocol": "https:",
    "domain": "www.domain.co.uk",
    "rootDomain": "domain.co.uk",
    "subdomain": "www",
    "tld": "co.uk",
    "path": "/my/single/path",
    "query": "?param=val,ue",
    "hash": "",
    "port": "",
    "url": "https://www.domain.co.uk/my/single/path?param=val,ue"
}
```


## Contributing
See our [contributing guidelines](CONTRIBUTING.md).