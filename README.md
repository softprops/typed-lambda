# typed lambda [![Build Status](https://travis-ci.org/softprops/typed-lambda.svg?branch=master)](https://travis-ci.org/softprops/typed-lambda)

> an attempt to formalize the event types involved in [AWS lambda](https://aws.amazon.com/lambda/) interfaces

Run code without thinking about servers. Write code without guessing types.

🚧 The provided definitions are currently under construction 🚧

## 🤔 why

Though there are [scattered samples of AWS Lambda events](https://docs.aws.amazon.com/lambda/latest/dg/eventsources.html) provided by AWS exist but absent of any formal schema describing them. This repository aims to be an accurate a collection of JSON schema documents organized by lambda trigger source that describe event structural types.

So why should anyone care?

* 👵 Human lives - Each and every AWS Lambda client binding is forced though cumbersome process of redefining these types *by hand*!
If sufficient schema's existed for AWS lambda events, this would no longer be needed as these language bindings could leverage code generation instead.

* 🔧 Tooling - Tooling for lambda could more easily be synthesized with machine readable information about events

* 📓 Documentation - Surprisingly what currently exists, is incomplete, and therefore only partially useful

* 👌 Correctness - Types can provide use to programmers even if your native programming language does not support them. Here is a [good example](https://github.com/DefinitelyTyped/DefinitelyTyped). Types enable productivity by making it less possible to represent mispreprented data.

## 🔬 schemas

The following are provided lambda triggers ( in order for reference to AWS's documentation on [event sources](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html) ). The goal here is to define [JSON schema](https://json-schema.org/) docs that line up with these triggers. Contruction of an initial set of schemas is under way under the [events](events) directory of this repository. 🙈 As schemas become formalized and tested they will be linked under the trigger sources below for reference.

* [s3](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-s3)
* [dynamodb](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-dynamo-db)
* [kinesis](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-kinesis-streams)
* [sns](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-sns)
* [ses](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-ses)
* [sqs](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-sqs)
* [cognito](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-cognito)
* [cloudformation](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-cloudformation)
* [cloudwatch logs](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-cloudwatch-logs)
* [cloudwatch events](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-cloudwatch-events)
* [codecommit](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-codecommit)
* [scheduled events](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-scheduled-events)
* [config](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-config)
* [alexa](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-echo)
* [lex](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-lex)
* [api gateway](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-api-gateway)
* [iot button](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-iot-button)
* [cloudfront](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-cloudfront)
* [kinesis firehose](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html#supported-event-source-kinesis-firehose)

## required fields

Some fields may be absent in events and some may be present with `null` values. Fields with `null` should *not* be included the json schema `required` field.

## 👯 get involved

This project AIMS to provide the most accurate reflection of AWS lambda types but is currently a best effort approach as no official documentation exists. If you become aware that fields are missing or incorrect. Please open a pull request containing your changes and an example payload that doesn't match the current schemas

To validate the existing schemas you will need to have `npm` installed.

Run the following

```sh
$ make test
```

Doug Tangren (softprops) 2018