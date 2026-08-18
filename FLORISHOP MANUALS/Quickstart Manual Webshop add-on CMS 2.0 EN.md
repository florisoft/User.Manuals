<img src="../fslogo.png">

# Quick Start Guide Add-on Content Management System (CMS)

*Please note: as the CMS is continuously being developed, some screenshots and steps in this guide may differ from the current situation in the system.*

In this document, we will guide you step by step through setting up your first CMS page. We divide this into several sections: **Hero (Header)**, **Carousel**, **Product List**, **Text + Image**, **Form**, and finally a **Footer**. This allows you to get familiar with our CMS and discover the extensive possibilities within the system.

If you are still having trouble and are looking for a ready-made solution, we would be happy to refer you to our website. There, you can easily choose a package that our CMS specialist can implement in your environment. [Click here for more information »](https://florisoft.com/cms-pakketten)

---

## Hero (Header)

The Hero is the first impression of your website. It immediately gives visitors an idea of what kind of company you are. The Hero often also contains a button that allows visitors to navigate directly to the webshop or the form for becoming a customer.

### Required components

For this section, you will need the following guides:

- [Drag & Drop](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#drag--drop)
- [Row/Column](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#rowcolumn)
- [Panel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#panel)
- [Flex](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#flex)
- [Text](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#text)
- [Button](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#button)
- [Templates](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#templates)

### Steps

| Step | Explanation |
|:--|:--|
| **1** | Using the **Drag & Drop** screen, drag a **Row** into the **Home** container and then add a **Column** to the Row. Close the Drag & Drop screen and set a minimum height of **100 ViewportPercent** for the Column. |
| **2** | Place a **Panel** inside the Column. Give the Panel the **Identification Name** `Hero` and set a **Background Image** for this component. Center the background image. |
| **3** | Place another **Panel** inside the `Hero` Panel and give it the **Identification Name** `Overlay`. Give this component a black background color with **40% opacity**. Then set a minimum height of **60 ViewportPercent** for this Panel. |
| **4** | Place a **Flex** component inside the `Overlay` Panel. Set the content to be centered both horizontally and vertically and enable **Fill Objects**. Then set the Flex component to inherit the same height as the `Overlay` Panel. |
| **5** | Place another **Panel** inside the Flex component and give it the **Identification Name** `Container`. Set a maximum width of **1200 pixels** for the `Container` Panel. |
| **6** | Place a **Text** component inside the `Container` Panel. Select the **H1** heading in the Text component, set the alignment to **Center**, and enter the following text in the TinyMCE field: **"This is my first CMS page"**. |
| **7** | Place a **Button** component inside the `Container` Panel and set its text to **"Go to webshop"**. Enable the **Chevron**, enter `/voorraad/start` as the [URL](#url), and set the button position to **Center**. |
| **8** | When you have completed the steps above correctly, your Hero should look like this:<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/hero.png"></details> |
| **9** | Save the **Hero** Panel as a Template so that you can reuse it on other pages. |

---

## Carousel (Product Range)

Below the Hero, we will display the product range. We will do this using a **Carousel** component.

### Required components

For this section, you will need the following guides:

- [Carousel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#carousel)
- [Panel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#panel)
- [Flex](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#flex)
- [Text](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#text)
- [Button](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#button)
- [Templates](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#templates)

### Steps

| Step | Explanation |
|:--|:--|
| **1** | Add a new **Panel** to the Column. Give the Panel the **Identification Name** `ProductRange` and set a **Background Color** that matches one of your two theme colors. |
| **2** | Add another **Panel** inside the `ProductRange` Panel and give it the **Identification Name** `Overlay`. Optionally, give this component a white background color with **80% opacity**, or choose an opacity that better matches your theme color. Set the **Padding** of this Panel to **80 pixels top and bottom** and **20 pixels left and right**. |
| **3** | Add a **Flex** component inside the `Overlay` Panel. Set the content to be aligned both horizontally and vertically centered and enable **Fill Objects**. |
| **4** | Add another **Panel** inside the Flex component and give it the **Identification Name** `Container`. Set a maximum width of **1200 pixels** for the `Container` Panel. |
| **5** | Add a **Carousel** component to the `Container` Panel. |
| **6** | Add a **Panel** inside the Carousel and give it the **Identification Name** `Slide 1`. Give the Panel a background color, **40 pixels of Padding** on all sides, and a **Border Radius** of **20 pixels**. |
| **7** | Add a **Text** component to the `Slide 1` Panel. Select the **H3** heading in the Text component, set the alignment to **Center**, and enter the following text in the TinyMCE field: **"Product 1"**. |
| **8** | Duplicate the `Slide 1` Panel three times and name the new Panels `Slide 2`, `Slide 3`, and `Slide 4`. |
| **9** | Select the **Carousel** component. Enable **Pagination** and **Autoplay**, set **Height Mode** to **Auto Stretch**, and set the **Space Between Slides** to **20 pixels**. Then, under the **Styling** tab, set the number of **Visible Columns** to **4** for desktop, **2** for tablet, and **1** for mobile. |
| **10** | Change **"Product 1"** in each Text component to the name of the Product Range you want to link to. Then enter the corresponding Product Range [URLs](#url) in the Panels (`Slide 1`, `Slide 2`, `Slide 3`, and `Slide 4`). |
| **11** | Select a Panel (Slide) and enter the corresponding **Product Range Code** under **Highlight Content**. Repeat this for each Slide. |
| **12** | When you have completed the steps above correctly, your Carousel should look like this:<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/assortiment.png"></details> |
| **13** | Save the **Product Range** Panel as a Template, so that you can reuse it on other pages. |

---

## Productlist

In this section, we will add a **Product List** that highlights a specific product range.

### Required components

For this section, you will need the following guides:

- [Productlist](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#productlist)
- [Panel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#panel)
- [Row/Column](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#rowcolumn)
- [Templates](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20EN.md#templates)

### Steps

| Step | Explanation |
|:--|:--|
| **1** | Add a new **Panel** to the Column. Give the Panel the **Identification Name** `ProductList` and set its **Background Color** to white. |
| **2** | Add a second **Panel** inside the `ProductList` Panel and give it the **Identification Name** `Overlay`. Set the **Padding** for this Panel to **80 pixels top and bottom** and **0 pixels left and right**. |
| **3** | Add a **Row** component with a **Column** component inside it to the `Overlay` Panel. |
| **4** | Add a **Panel** inside the Column and give it the **Identification Name** `Container`. Set a maximum width of **1200 pixels** for the `Container` Panel. |
| **5** | Add a **Product List** component to the **Column** and generate a product range. Then set the component to **Option 2**. Set the **Margin** of the Product List component to `auto` on the left and right sides. Then set a maximum width of **1296 pixels** and set the spacing between the Product Cards to **20 pixels**. Finally, configure the component to use a **Carousel view** with navigation arrows. |
| **6** | When you have completed the steps above correctly, your Product List should look like this:<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/partijlijst.png"></details> |
| **7** | Save the **Productlist** Panel as a Template, so that you can reuse it on other pages. |

---

## Image + Text

In this section, we will add an image and text.

### Required components

For this section, you will need the following guides:

- [Panel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#panel)
- [Flex](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#flex)
- [Row/Column](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#rowcolumn)
- [Text](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#text)
- [Button](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#button)
- [Templates](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#templates)

### Steps

| Step | Description |
|:--|:--|
| **1** | Add a new **Panel** to the Column. Give the Panel the **Identifier Name** `Image + Text` and set a **Background Color** that matches one of your two theme colors. |
| **2** | Add a second **Panel** inside the `Image + Text` Panel and give it the **Identifier Name** `Overlay`. Optionally, give this component a white background with **80% opacity**, or choose an opacity that better matches your theme color. Set the **Padding** of this Panel to **0 pixels on all sides**. |
| **3** | Add a **Flex** component inside the `Overlay` Panel. Set the **Flex Direction** to **Row** and set **Wrap** to **No Wrap**. |
| **4** | Add two **Columns** to the Flex component. Set both Columns to **6 columns** on desktop and tablet and **12 columns** on mobile. Set the **Padding** of the left Column to **0 pixels on all sides**. For the right Column, set **40 pixels of Padding** on the left and right sides. |
| **5** | Add a **Panel** to the left Column. Set a **Background Image**, position it centrally, and give the Panel **8rem of Padding** on all sides. |
| **6** | Add a **Flex** component to the right Column. Set a **Background Image**, position it centrally, and give the Flex component **8rem of Padding** on all sides. |
| **7** | Add a **Panel** inside the Flex component and give it the **Identifier Name** `Text and Button`. Set **80 pixels of Padding** on the top and bottom and **0 pixels** on the left and right. Set the maximum width to **600 pixels**. |
| **8** | Add two **Text** components and a **Button** component to the `Text and Button` Panel. Select the **H2** heading in the first Text component and enter **"My first CMS page is almost ready!"** in the TinyMCE field. Add any text you like to the second Text component. Finally, add text to the Button and set your desired URL. |
| **9** | When you have completed the steps above correctly, your **Image + Text** section should look like this:<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/afbeelding-tekst.png"></details> |
| **10** | Save the **Image + Text** Panel as a Template so that you can reuse it on other pages. |
| **11** | **Tip:** The section is currently aligned across the full width of the screen. If you want to limit its width, set the maximum width of the `Image + Text` Panel to **1200 pixels** and set the **Margin** on the left and right sides to `auto`. |

---

## Form

In this section, we will set up a **Form**.

### Required components

For this section, you will need the following guides:

- [Form](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#formulier)
- [Text Input](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#tekst-input)
- [Email Input](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#email-input)
- [Submit Button](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#verzendknop)
- [Panel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#panel)
- [Flex](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#flex)
- [Text](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#text)
- [Templates](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#templates)

### Steps

| Step | Explanation |
|:--|:--|
| **1** | Place a new **Panel** in the Column. Give the Panel the **Identification name** `Form` and set a **Background color** that matches one of your two theme colors. |
| **2** | Place a second **Panel** inside the `Form` Panel and give it the **Identification name** `Overlay`. Optionally, give this component a white background color with **90%** opacity, or choose an opacity that better matches your theme color. Set the **Padding** of this Panel to **0 pixels on all sides**. |
| **3** | Place a **Flex** component inside the `Overlay` Panel. Set the content to be aligned both horizontally and vertically centered, and enable **Fill objects**. |
| **4** | Place a **Panel** inside the Flex component. Set the **Padding** to **80 pixels top and bottom** and **40 pixels left and right**. Set the maximum width to **600 pixels**. |
| **5** | Place a **Text** component and a **Form** component inside the Panel. |
| **6** | Select the **H2** heading in the Text component and enter the following text in the TinyMCE field: **"My first CMS form is almost ready!"**. |
| **7** | You can also place other components, such as **Columns** and **Flex**, inside the **Form**. Place a **Flex** component containing two **Text Input** components. These can, for example, be used for the first name and last name. |
| **8** | Place multiple **Text Input** components in the Form and use the following placeholders: **Company name**, **Email address** (use the **Email Input** component), **Phone number**, and **Message**. Then place a **Flex** component containing a **Submit Button** component. This allows you to determine the position of the Submit Button. |
| **9** | Go through the form settings to configure and test the form. |
| **10** | When you have completed the steps above correctly, your **Form** section should look like this:<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/formulier.png"></details> |
| **11** | Save the **Form** Panel as a Template so that you can reuse it on other pages. |
| **12** | **Tip:** The section is currently aligned across the full width of the screen. If you want to limit its width, give the `Form` Panel a maximum width of **1200 pixels** and set the **Margin** on the left and right to `auto`. |

---

## Footer

By now, you have built a large part of your page and should have a good understanding of how our CMS works and the possibilities it offers.

For this final section, you can use a ready-made **Footer Template**. You can find this Template in the **Components** dialog under the **Templates** category. If you have followed the previous steps, you will also find the other Templates you created here.

Place the **Footer Template** in the **Footer** container.

### Required components

For this section, you will need the following guide:

- [Edit Footer](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#footer-bewerken)

---

You have now completed all sections of this page! 🎉

You can now save the **Home** container as a Template. This Template can then be used as the basis for every new page you create, giving you a consistent starting point for each page.

Of course, there are many more possibilities for fully customizing your CMS pages. If you found setting up the page a little challenging or would rather start with a professional foundation, Florisoft also offers ready-made CMS packages. Our CMS specialists can help you get started quickly with a professional setup.

[Click here for more information »](https://florisoft.com/cms-pakketten)