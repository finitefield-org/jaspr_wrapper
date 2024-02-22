part of 'html.dart';

/// The &lt;article&gt; HTML element represents a self-contained composition in a document, page, application, or site, which is intended to be independently distributable or reusable (e.g., in syndication). Examples include: a forum post, a magazine or newspaper article, or a blog entry, a product card, a user-submitted comment, an interactive widget or gadget, or any other independent item of content.
class Article extends StaticDomComponent {
  Article(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'article',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;aside&gt; HTML element represents a portion of a document whose content is only indirectly related to the document's main content. Asides are frequently presented as sidebars or call-out boxes.
class Aside extends StaticDomComponent {
  Aside(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'aside',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;body&gt; HTML element represents the content of an HTML document. There can be only one &lt;body&gt; element in a document.
class Body extends StaticDomComponent {
  Body(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'body',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;footer&gt; HTML element represents a footer for its nearest ancestor sectioning content or sectioning root element. A &lt;footer&gt; typically contains information about the author of the section, copyright data or links to related documents.
class Footer extends StaticDomComponent {
  Footer(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'footer',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;head&gt; HTML element contains machine-readable information (metadata) about the document, like its title, scripts, and style sheets.
class Head extends StaticDomComponent {
  Head(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'head',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;header&gt; HTML element represents introductory content, typically a group of introductory or navigational aids. It may contain some heading elements but also a logo, a search form, an author name, and other elements.
class Header extends StaticDomComponent {
  Header(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'header',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;html&gt; HTML element represents the root (top-level element) of an HTML document, so it is also referred to as the root element. All other elements must be descendants of this element.
class Html extends StaticDomComponent {
  Html(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'html',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;h1&gt; to &lt;h6&gt; HTML elements represent six levels of section headings. &lt;h1&gt; is the highest section level and &lt;h6&gt; is the lowest.
class H1 extends StaticDomComponent {
  H1(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'h1',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;h1&gt; to &lt;h6&gt; HTML elements represent six levels of section headings. &lt;h1&gt; is the highest section level and &lt;h6&gt; is the lowest.
class H2 extends StaticDomComponent {
  H2(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'h2',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;h1&gt; to &lt;h6&gt; HTML elements represent six levels of section headings. &lt;h1&gt; is the highest section level and &lt;h6&gt; is the lowest.
class H3 extends StaticDomComponent {
  H3(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'h3',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;h1&gt; to &lt;h6&gt; HTML elements represent six levels of section headings. &lt;h1&gt; is the highest section level and &lt;h6&gt; is the lowest.
class H4 extends StaticDomComponent {
  H4(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'h4',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;h1&gt; to &lt;h6&gt; HTML elements represent six levels of section headings. &lt;h1&gt; is the highest section level and &lt;h6&gt; is the lowest.
class H5 extends StaticDomComponent {
  H5(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'h5',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;h1&gt; to &lt;h6&gt; HTML elements represent six levels of section headings. &lt;h1&gt; is the highest section level and &lt;h6&gt; is the lowest.
class H6 extends StaticDomComponent {
  H6(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'h6',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;nav&gt; HTML element represents a section of a page whose purpose is to provide navigation links, either within the current document or to other documents. Common examples of navigation sections are menus, tables of contents, and indexes.
class Nav extends StaticDomComponent {
  Nav(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'nav',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;section&gt; HTML element represents a generic standalone section of a document, which doesn't have a more specific semantic element to represent it. Sections should always have a heading, with very few exceptions.
class Section extends StaticDomComponent {
  Section(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'section',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;blockquote&gt; HTML element indicates that the enclosed text is an extended quotation. Usually, this is rendered visually by indentation. A URL for the source of the quotation may be given using the cite attribute, while a text representation of the source can be given using the &lt;cite&gt; element.
///
/// - [cite]: A URL that designates a source document or message for the information quoted. This attribute is intended to point to information explaining the context or the reference for the quote.
class BlockQuote extends StaticDomComponent {
  BlockQuote(List<Component> children,
      {String? cite,
      Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'blockquote',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: {
            ..._attrsToAttributesMap(attrs),
            if (cite != null) 'cite': cite,
          },
          events: events,
          children: children,
        );
}

/// The &lt;div&gt; HTML element is the generic container for flow content. It has no effect on the content or layout until styled in some way using CSS (e.g. styling is directly applied to it, or some kind of layout model like Flexbox is applied to its parent element).
class Div extends StaticDomComponent {
  Div(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'div',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;ul&gt; HTML element represents an unordered list of items, typically rendered as a bulleted list.
class Ul extends StaticDomComponent {
  Ul(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'ul',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;ol&gt; HTML element represents an ordered list of items — typically rendered as a numbered list.
///
/// - [reversed]: This Boolean attribute specifies that the list's items are in reverse order. Items will be numbered from high to low.
/// - [start]: An integer to start counting from for the list items. Always an Arabic numeral (1, 2, 3, etc.), even when the numbering type is letters or Roman numerals. For example, to start numbering elements from the letter "d" or the Roman numeral "iv," use start="4".
/// - [type]: Sets the numbering type.
///   The specified type is used for the entire list unless a different type attribute is used on an enclosed &lt;li&gt; element.
class Ol extends StaticDomComponent {
  Ol(List<Component> children,
      {bool? reversed,
      int? start,
      NumberingType? type,
      Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'ol',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: {
            ..._attrsToAttributesMap(attrs),
            if (reversed == true) 'reversed': '',
            if (start != null) 'start': '$start',
            if (type != null) 'type': type.value,
          },
          events: events,
          children: children,
        );
}

/// The &lt;li&gt; HTML element is used to represent an item in a list. It must be contained in a parent element: an ordered list (&lt;ol&gt;), an unordered list (&lt;ul&gt;), or a menu (&lt;menu&gt;). In menus and unordered lists, list items are usually displayed using bullet points. In ordered lists, they are usually displayed with an ascending counter on the left, such as a number or letter.
///
/// - [value]: This integer attribute indicates the current ordinal value of the list item as defined by the &lt;ol&gt; element. The only allowed value for this attribute is a number, even if the list is displayed with Roman numerals or letters. List items that follow this one continue numbering from the value set. The value attribute has no meaning for unordered lists (&lt;ul&gt;) or for menus (&lt;menu&gt;).
class Li extends StaticDomComponent {
  Li(List<Component> children,
      {int? value,
      Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'li',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: {
            ..._attrsToAttributesMap(attrs),
            if (value != null) 'value': '$value',
          },
          events: events,
          children: children,
        );
}

/// The &lt;hr&gt; HTML element represents a thematic break between paragraph-level elements: for example, a change of scene in a story, or a shift of topic within a section.
class Hr extends StaticDomComponent {
  Hr(
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'hr',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
        );
}

/// The &lt;p&gt; HTML element represents a paragraph. Paragraphs are usually represented in visual media as blocks of text separated from adjacent blocks by blank lines and/or first-line indentation, but HTML paragraphs can be any structural grouping of related content, such as images or form fields.
class P extends StaticDomComponent {
  P(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'p',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}

/// The &lt;pre&gt; HTML element represents preformatted text which is to be presented exactly as written in the HTML file. The text is typically rendered using a non-proportional, or monospaced, font. Whitespace inside this element is displayed as written.
class Pre extends StaticDomComponent {
  Pre(List<Component> children,
      {Key? key,
      IdAttr? id,
      Set<Attr>? attrs,
      Styles? styles,
      Map<String, EventCallback>? events})
      : super(
          tag: 'pre',
          key: key,
          id: id?.value,
          classes: _attrsToClasses(attrs),
          styles: styles,
          attributes: _attrsToAttributesMap(attrs),
          events: events,
          children: children,
        );
}
