---
hide:
  - navigation
description: "Privacy policy information about canine.tools services."
icon: "material/eye-off"
---
This page details canine.tools privacy policy. This was last updated May 5, 2025. Most of this was taken from [tux.pizza](https://tux.pizza).

---

## tl;dr
You are responsible for all content you share and hold all rights to it. By submitting content to canine.tools, you give us the right to display and distribute it for that application. You are responsible for the legality of your content. We only store data needed for services to function. NGINX logs collect IP addresses and visited sites; these logs are rotated and deleted weekly. The content in each application is private. Services that require user data (e.g., account sign-ups) keep data local and encrypted, with backups uploaded to Cloudflare R2.

---

## Terms
* "We/Us" - canine.tools server admin.
* "Service/Services" - any service or frontend provided by canine.tools.
* "You" - any user accessing or using the services provided by canine.tools.

---

## Content
On services that allows you to post, link and otherwise make available content, you grant us the right and license to display and distribute your content on or through that service (including via applications). We may format your content for display throughout the service, but we will not edit or revise the substance of your content itself. The displaying and distribution of your content happens strictly only according to the visibility rules you have set for the content. We will not modify the visibility of the content you have set.

Aside from our limited right to your content, you retain all of your rights to the content you post, link and otherwise make available on or through these services.

---

## Liability
You are responsible for the content that you make available to our services, including its legality, reliability, and appropriateness.

In no event will canine.tools be liable to you or any third party for any special, indirect, incidental, exemplary or consequential damages of any kind arising out of or in connection with our services and content included on or otherwise made available to you through our services.

---

## Your Data
This section outlines what data we collect and how it's used. In short, we only store data necessary for operation or security auditing. We will never sell or share data outside of the project.

### Analytics
We utilize [Plausible](https://plausible.io/) ([self hosted](https://plausible.canine.tools/)) for analytics. Below are the sites that use it:

* This site (canine.tools)
* cobalt (cobalt.canine.tools)

Plausible uses no cookies and is fully compliant with GDPR, CCPA and PECR.

We also utilize other analytics data through logs. This can include:

* Network traffic usage
* fail2ban - used for blocking mass requests, failed SSH logins, and more. This data is submitted to [AbuseIPDB](https://www.abuseipdb.com/user/105937). This is being used for security and blocking bad actors.

### Server Logs
We use NGINX for our web server. We store logs for each public facing website (anything using the `canine.tools` domain). This data includes your IP address, user agent, referrer, status codes and what pages you visit. This data is not accessible to anyone else. Logs are rotated and deleted once a week. This data is used for analytics & security monitoring.

### Cookies
Some services may use cookies to store settings and other information (like login sessions). You can disable cookies on your browser if you don't want this information stored.

### Accounts
Some services require you to sign up for an account. This data is stored on our local MySQL server.

### Bot Protection (Anubis)
Some services use [Anubis](https://anubis.techaro.lol/), a bot protection system that helps prevent mass scraping and AI training. Anubis uses your browser data, such as:

* IP address
* User-Agent
* Accept-Encoding
* Accept-Language
* Timestamp (rounded to nearest week)

Anubis uses the information above to generate a secure challenge to help identify real users from automated requests. If a real user passes a challenge, a cookie is set containing a signed token that proves your browser is legitimate. This cookie is only used to prevent repeated challenges. This cookie is used solely for security purposes and does not track you.

### Services & Data

Listed below are the different services and what data we collect for it.

#### PrivateBin
By using the PrivateBin service, you are providing us with content you submit to the site (a "paste"). Each paste is encrypted on your end, and we do not have access to the content of each paste unless you provide the decryption key. We only store the encrypted contents.

#### Chibisafe
By using the Chibisafe service, you are providing us with a username.

When uploading files, data collected includes: IP address, time uploaded, and the original file name. This data is not shared with any other parties. It's only used to identify who uploaded what files for abuse.

#### Vaultwarden
By using the Vaultwarden service, you are providing us with an email and an optional account username. This information is accessible only locally and will never be shared or used out of the context or your account. All passwords for this service are hashed, and cannot be reversed. All other account information is encrypted using your password, and cannot be accessed by anyone unless they obtain your password or can decrypt the database.

#### Vikunja
By using the Vikunja service, you are providing us with an email and an account username. This information is accessible only locally and will never be shared or used out of the context or your account. Data for this service is not end-to-end encrypted, and can be accessed via the local database including Namespaces, Lists, Teams, etc. This data will never be sold or given away to anyone.

#### Wakapi
By using the Wakapi service, you are providing us with an email. You are providing us your coding languages, project names, program names, and usage. This data is only public if you enable to be on leaderboards.

---

### Backups
We utilize server backups for security and safety.

- **Frequency**: Backups are taken at the start of every hour.
- **Retention**: Only the last 24 hours of backups are kept; older backups are automatically removed.
- **Storage**: Backups are encrypted locally and uploaded to Cloudflare R2. Only the server administrator has access to these encrypted backups.
- **Scope**: These backups include: MySQL databases & server configurations.

---

## Data Removal
If you wish to have all your data removed from canine.tools, please contact us at `hyper@canine.tools` ([PGP key](../assets/hyper@canine.tools.asc)). Please provide us with any data you want removed. We may request additional information to verify your identity before processing your request. Data removal can be access logs and account wipes (if the service has it).