part of 'html.dart';

/// The &lt;audio&gt; HTML element is used to embed sound content in documents. It may contain one or more audio sources, represented using the src attribute or the &lt;source&gt; element: the browser will choose the most suitable one. It can also be the destination for streamed media, using a MediaStream.
///
/// - [autoplay]: A Boolean attribute: if specified, the audio will automatically begin playback as soon as it can do so, without waiting for the entire audio file to finish downloading.
/// - [controls]: If this attribute is present, the browser will offer controls to allow the user to control audio playback, including volume, seeking, and pause/resume playback.
/// - [crossOrigin]: Indicates whether to use CORS to fetch the related audio file.
/// - [loop]: If specified, the audio player will automatically seek back to the start upon reaching the end of the audio.
/// - [muted]: Indicates whether the audio will be initially silenced. Its default value is false.
/// - [preload]: Provides a hint to the browser about what the author thinks will lead to the best user experience.
/// - [src]: The URL of the audio to embed. This is subject to HTTP access controls. This is optional; you may instead use the &lt;source&gt; element within the audio block to specify the audio to embed.
class Audio extends DomComponent {
  Audio(List<Component> children,
      {bool? autoplay,
      bool? controls,
      CrossOrigin? crossOrigin,
      bool? loop,
      bool? muted,
      Preload? preload,
      String? src,
      Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'audio',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: {
            ..._attrsToAttributesMap(attrs),
            if (autoplay == true) 'autoplay': '',
            if (controls == true) 'controls': '',
            if (crossOrigin != null) 'crossorigin': crossOrigin.value,
            if (loop == true) 'loop': '',
            if (muted == true) 'muted': '',
            if (preload != null) 'preload': preload.value,
            if (src != null) 'src': src,
          },
          events: events,
          children: children,
        );
}

/// The &lt;img&gt; HTML element embeds an image into the document.
///
/// - [alt]: Defines an alternative text description of the image
/// - [crossOrigin]: Indicates if the fetching of the image must be done using a CORS request.
/// - [width]: The intrinsic width of the image in pixels.
/// - [height]: The intrinsic height of the image, in pixels.
/// - [loading]: Indicates how the browser should load the image.
/// - [src]: The image URL.
/// - [referrerPolicy]: Indicates which referrer to send when fetching the resource.
class Img extends DomComponent {
  Img(
      {String? alt,
      CrossOrigin? crossOrigin,
      int? width,
      int? height,
      MediaLoading? loading,
      required SrcAttr src,
      ReferrerPolicy? referrerPolicy,
      Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'img',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: {
            ..._attrsToAttributesMap(attrs),
            if (alt != null) 'alt': alt,
            if (crossOrigin != null) 'crossorigin': crossOrigin.value,
            if (width != null) 'width': '$width',
            if (height != null) 'height': '$height',
            if (loading != null) 'loading': loading.value,
            'src': src.value,
            if (referrerPolicy != null) 'referrerpolicy': referrerPolicy.value,
          },
          events: events,
        );
}

/// The &lt;video&gt; HTML element embeds a media player which supports video playback into the document. You can use &lt;video&gt; for audio content as well, but the &lt;audio&gt; element may provide a more appropriate user experience.
///
/// - [autoplay]: Indicates if the video automatically begins to play back as soon as it can do so without stopping to finish loading the data.
/// - [controls]: If this attribute is present, the browser will offer controls to allow the user to control video playback, including volume, seeking, and pause/resume playback.
/// - [crossOrigin]: Indicates whether to use CORS to fetch the related video.
/// - [loop]: If specified, the browser will automatically seek back to the start upon reaching the end of the video.
/// - [muted]: Indicates the default setting of the audio contained in the video. If set, the audio will be initially silenced. Its default value is false, meaning that the audio will be played when the video is played.
/// - [poster]: A URL for an image to be shown while the video is downloading. If this attribute isn't specified, nothing is displayed until the first frame is available, then the first frame is shown as the poster frame.
/// - [preload]: Provides a hint to the browser about what the author thinks will lead to the best user experience with regards to what content is loaded before the video is played.
/// - [src]: The URL of the video to embed. This is optional; you may instead use the &lt;source&gt; element within the video block to specify the video to embed.
/// - [width]: The width of the video's display area, in CSS pixels.
/// - [height]: The height of the video's display area, in CSS pixels.
class Video extends DomComponent {
  Video(List<Component> children,
      {bool? autoplay,
      bool? controls,
      CrossOrigin? crossOrigin,
      bool? loop,
      bool? muted,
      String? poster,
      Preload? preload,
      String? src,
      int? width,
      int? height,
      Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'video',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: {
            ..._attrsToAttributesMap(attrs),
            if (autoplay == true) 'autoplay': '',
            if (controls == true) 'controls': '',
            if (crossOrigin != null) 'crossorigin': crossOrigin.value,
            if (loop == true) 'loop': '',
            if (muted == true) 'muted': '',
            if (poster != null) 'poster': poster,
            if (preload != null) 'preload': preload.value,
            if (src != null) 'src': src,
            if (width != null) 'width': '$width',
            if (height != null) 'height': '$height',
          },
          events: events,
          children: children,
        );
}

/// The &lt;embed&gt; HTML element embeds external content at the specified point in the document. This content is provided by an external application or other source of interactive content such as a browser plug-in.
///
/// - [src]: The URL of the resource being embedded.
/// - [type]: The MIME type to use to select the plug-in to instantiate.
/// - [width]: The displayed width of the resource, in CSS pixels.
/// - [height]: The displayed height of the resource, in CSS pixels.
class Embed extends DomComponent {
  Embed(
      {required SrcAttr src,
      String? type,
      int? width,
      int? height,
      Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'embed',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: {
            ..._attrsToAttributesMap(attrs),
            'src': src.value,
            if (type != null) 'type': type,
            if (width != null) 'width': '$width',
            if (height != null) 'height': '$height',
          },
          events: events,
        );
}

/// The &lt;iframe&gt; HTML element represents a nested browsing context, embedding another HTML page into the current one.
///
/// - [src]: The URL of the page to embed. Use a value of about:blank to embed an empty page that conforms to the same-origin policy. Also note that programmatically removing an &lt;iframe&gt;'s src attribute (e.g. via Element.removeAttribute()) causes about:blank to be loaded in the frame in Firefox (from version 65), Chromium-based browsers, and Safari/iOS.
/// - [allow]: Specifies a feature policy for the &lt;iframe&gt;. The policy defines what features are available to the &lt;iframe&gt; based on the origin of the request (e.g. access to the microphone, camera, battery, web-share API, etc.).
/// - [csp]: A Content Security Policy enforced for the embedded resource.
/// - [loading]: Indicates how the browser should load the iframe.
/// - [name]: A targetable name for the embedded browsing context. This can be used in the target attribute of the &lt;a&gt;, &lt;form&gt;, or &lt;base&gt; elements; the formtarget attribute of the &lt;input&gt; or &lt;button&gt; elements; or the windowName parameter in the window.open() method.
/// - [sandbox]: Applies extra restrictions to the content in the frame. The value of the attribute can either be empty to apply all restrictions, or space-separated tokens to lift particular restrictions.
/// - [referrerPolicy]: Indicates which referrer to send when fetching the frame's resource.
/// - [width]: The width of the frame in CSS pixels. Default is 300.
/// - [height]: The height of the frame in CSS pixels. Default is 150.
class IFrame extends DomComponent {
  IFrame(List<Component> children,
      {required SrcAttr src,
      String? allow,
      String? csp,
      MediaLoading? loading,
      String? name,
      String? sandbox,
      ReferrerPolicy? referrerPolicy,
      int? width,
      int? height,
      Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'iframe',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: {
            ..._attrsToAttributesMap(attrs),
            'src': src.value,
            if (allow != null) 'allow': allow,
            if (csp != null) 'csp': csp,
            if (loading != null) 'loading': loading.value,
            if (name != null) 'name': name,
            if (sandbox != null) 'sandbox': sandbox,
            if (referrerPolicy != null) 'referrerpolicy': referrerPolicy.value,
            if (width != null) 'width': '$width',
            if (height != null) 'height': '$height',
          },
          events: events,
          children: children,
        );
}

/// The &lt;object&gt; HTML element represents an external resource, which can be treated as an image, a nested browsing context, or a resource to be handled by a plugin.
///
/// - [data]: The address of the resource as a valid URL. At least one of data and type must be defined.
/// - [name]: The name of valid browsing context (HTML5).
/// - [type]: The content type of the resource specified by data. At least one of data and type must be defined.
/// - [width]: The width of the displayed resource in CSS pixels.
/// - [height]: The height of the displayed resource in CSS pixels.
class ObjectElem extends DomComponent {
  ObjectElem(List<Component> children,
      {String? data,
      String? name,
      String? type,
      int? width,
      int? height,
      Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'object',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: {
            ..._attrsToAttributesMap(attrs),
            if (data != null) 'data': data,
            if (name != null) 'name': name,
            if (type != null) 'type': type,
            if (width != null) 'width': '$width',
            if (height != null) 'height': '$height',
          },
          events: events,
          children: children,
        );
}

/// The &lt;source&gt; HTML element specifies multiple media resources for the &lt;picture&gt;, the &lt;audio&gt; element, or the &lt;video&gt; element. It is an empty element, meaning that it has no content and does not have a closing tag. It is commonly used to offer the same media content in multiple file formats in order to provide compatibility with a broad range of browsers given their differing support for image file formats and media file formats.
///
/// - [type]: The MIME media type of the resource, optionally with a codecs parameter.
/// - [src]: Address of the media resource.
///
///   Required if the source element's parent is an &lt;audio&gt; and &lt;video&gt; element, but not allowed if the source element's parent is a &lt;picture&gt; element.
class Source extends DomComponent {
  Source(
      {String? type,
      String? src,
      Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'source',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: {
            ..._attrsToAttributesMap(attrs),
            if (type != null) 'type': type,
            if (src != null) 'src': src,
          },
          events: events,
        );
}
