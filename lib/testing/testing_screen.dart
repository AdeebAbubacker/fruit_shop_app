import 'package:flutter/material.dart';



import 'package:flutter/material.dart';
import 'package:flutter_super_html_viewer/flutter_super_html_viewer.dart';

const _htmlContent = '''
<!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vegan Privacy Policy</title>
    <style>
      body {
        padding: 16px;
        font-family: sans-serif;
        margin: 0;
        background-color: #f4f4f4;
      }
      .container {
        max-width: 720px;
        margin: 0 auto;
        background-color: #fff;
        padding: 16px;
        border-radius: 8px;
      }
      .flex {
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin-bottom: 16px;
      }
      .bold {
        font-weight: bold;
      }
      .green {
        color: #388E3C;
      }
      .grey {
        color: #808080;
      }
      .italic {
        font-style: italic;
      }
      .image {
        width: 50px;
        height: 40px;
      }
      h1, h2, h3 {
        margin: 16px 0;
      }
      p {
        margin: 8px 0;
      }
      ul {
        margin: 8px 0 16px 20px;
      }
      @media (max-width: 768px) {
        .flex {
          flex-direction: column;
          align-items: flex-start;
        }
        .image {
          margin-bottom: 16px;
        }
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1 class="bold green">Privacy Policy</h1>
      <div class="flex">
        <p class="grey italic">Last updated: July 24, 2024</p>
        <img class="image" src="assets/vegan.png" alt="Vegan Logo">
      </div>
      <h2 class="bold green">Introduction</h2>
      <p>Welcome to Vegan. We respect your privacy and are committed to protecting your personal data. This privacy policy will inform you about how we look after your personal data when you visit our website (regardless of where you visit it from) and tell you about your privacy rights and how the law protects you.</p>
      
      <h2 class="bold green">Information We Collect</h2>
      <p>We may collect and process the following information about you:</p>
      <ul>
        <li><span class="bold">Identity Data:</span> Includes first name, last name, username or similar identifier, and title.</li>
        <li><span class="bold">Contact Data:</span> Includes billing address, delivery address, email address, and telephone numbers.</li>
        <li><span class="bold">Financial Data:</span> Includes bank account and payment card details.</li>
        <li><span class="bold">Transaction Data:</span> Includes details about payments to and from you and other details of products and services you have purchased from us.</li>
      </ul>

      <h2 class="bold green">How We Use Your Information</h2>
      <p>We will only use your personal data when the law allows us to. Most commonly, we will use your personal data in the following circumstances:</p>
      <ul>
        <li>Where we need to perform the contract we are about to enter into or have entered into with you.</li>
        <li>Where it is necessary for our legitimate interests (or those of a third party) and your interests and fundamental rights do not override those interests.</li>
        <li>Where we need to comply with a legal or regulatory obligation.</li>
      </ul>
      
      <h3 class="bold green">Data Retention</h3>
      <p>We will only retain your personal data for as long as reasonably necessary to fulfill the purposes we collected it for, including the satisfaction of any legal, accounting, or reporting requirements. To determine the appropriate retention period for personal data, we consider the amount, nature, and sensitivity of the personal data, the potential risk of harm from unauthorized disclosure or use of your personal data, the purposes for which we process your personal data, and the applicable legal requirements.</p>
      
      <h3 class="bold green">Your Legal Rights</h3>
      <p>Under certain circumstances, you have rights under data protection laws in relation to your personal data, including the right to access, correct, or erase your personal data, and the right to object to or restrict the processing of your personal data. If you wish to exercise any of these rights, please contact us.</p>
      
      <h2 class="bold green">Data Security</h2>
      <p>We have put in place appropriate security measures to prevent your personal data from being accidentally lost, used, or accessed in an unauthorized way, altered, or disclosed. In addition, we limit access to your personal data to those employees, agents, contractors, and other third parties who have a business need to know. They will only process your personal data on our instructions and they are subject to a duty of confidentiality.</p>
      
      <h2 class="bold green">Changes to this Privacy Policy</h2>
      <p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page. You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>
      
      <h2 class="bold green">Contact Us</h2>
      <p>If you have any questions about this Privacy Policy, please contact us:</p>
      <p>Email: support@vegan.com</p>
      <p>Address: Veggie Lane, Plant City, Ramanattukara</p>
    </div>
  </body>
  </html>
''';



class SampleTesting extends StatefulWidget {
  const SampleTesting({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SampleTesting> createState() => _SampleTestingState();
}

class _SampleTestingState extends State<SampleTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: HtmlContentViewer(
          htmlContent: _htmlContent,
          initialContentHeight: MediaQuery.of(context).size.height,
          initialContentWidth: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}




