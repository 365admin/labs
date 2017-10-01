---
title: Why an Office365 test environment
---
Everybody knows that test environments are a very good idea, providing a safe place to try new features or configuration changes to products, develop scripts and tools, or provide training for your staff. Office 365 is no different, but a lot of customers that I talk to don’t maintain a test environment at all. And many of the IT pros that I talk to also don’t have their own person tenant for testing and training.

For traditional on-premises infrastructure the reasons for not running test environments are usually cost-related. Sadly, it is very common for IT teams to not have the resources such as hardware or virtualization capacity to build a separate environment that is a meaningful representation of their production environment.

Cloud services like Office 365 significantly lower the barrier to entry for operating a test environment. You can provision an Office 365 tenant within a few minutes, and even operate it for 30 days as a trial at zero cost. If you need to test hybrid functionality, it’s relatively easy to fit two VMs on a reasonable spec laptop or desktop machine to perform the on-premises roles. For long term testing requirements, the cost of a small number of paid licenses is trivial (and can often be slipped into the purchasing approval for the production tenant).

If you’re creating an Office 365 test environment, here’s a few tips to get started:

If you are yet to create a production tenant, do not use your intended production name for the test tenant. For example, if you’re planning to name your production tenant globomantics.onmicrosoft.com, don’t use that name for the test tenant. Microsoft doesn’t allow you to change a tenant name after it has been chosen, and cleaning out a test tenant to prepare it for production use is sometimes difficult. Use a separate name such as globotest.onmicrosoft.com.

If you have no budget for operating a test tenant long term (even though it’s super cheap, you only need to maintain a single paid license when you’re otherwise not using it), and you need to use the 30-day trial instead, plan your testing before you create the tenant. There’s no point wasting the first week of your trial period just working out what you want to test. By having a list of test scenarios prepared beforehand, you’ll get the maximum use of the 30-day trial period. Of course, you can always create a new test tenant if you need to continue after 30 days, which brings me to the next point.

Automate early and often. As you work through your testing you should develop as much automation as possible for simple tasks such as creating bulk users, assigning licenses, and applying basic configuration across the tenant. This may slow down your initial testing, but it will speed up subsequent tests. This is particularly valuable if you are going to be creating multiple tenants over time, but will also serve you well later when you are running a production tenant.

Test a higher tier of Office 365 than you plan to purchase (unless of course you plan to buy the top tier anyway). This is your chance to try out features that you’re not sure whether you need or not.

As one final tip, remember to enable your test tenant for First Release. One of the reasons for having a test tenant is to test features before they’re rolled out to your production users, so enabling First Release for your tenant will give you that head start that you need.

> https://practical365.com/blog/create-test-environment-office-365