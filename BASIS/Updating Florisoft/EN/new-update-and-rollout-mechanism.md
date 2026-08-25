# New Florisoft update and rollout mechanism

Florisoft uses a new way to roll out new versions. The update has already been completed. You only need to determine which version each user group may use.

A new version is stored in a folder with a version number and date, for example:

```text
dataadt\BIN140.598_260603
```

In this folder, `140.598` is the version number and `260603` is the date of the version.

## Why are you seeing this page?

You are seeing this page because you want to make a new Florisoft version available to other users. The update itself has already been completed. The transition to the new system has also already taken place.

In the old system, a version was distributed through folders such as `BINUPDATE` and `BINLATEST`. This now works differently. You no longer choose one general rollout folder; instead, you choose a specific version for each user group.

## Which groups are available?

There are three groups:

- Administrators
- Pilot users
- Standard users

### What do they mean?

- Administrators: test the new version first.
- Pilot users: receive the version next, as a small group.
- Standard users: receive the version once it has been tested and approved.

### Recommended order

1. Administrators
2. Pilot users
3. Standard users

This keeps the risk as low as possible for most users.

## What has already happened automatically?

During the initial transition to this new system, the update may still have started through the old process. The version was then automatically converted to a new version folder, such as `BIN140.598_260603`.

The user who performed the update was automatically placed in the **Administrators** group. The version for this group has also already been configured. You do not need to do anything else for this group.

## What do you need to do now?

If you consider the new version suitable, you can assign it to a group.

A good order is:

1. First, let only **Administrators** work with the new version.
2. Then assign the version to a small group of **Pilot users**.
3. Only after that, assign the version to all **Standard users**.

## Opening Active users

Open the **Actieve gebruikers** screen.

On the left side of the screen, you will see the groups:

- **Backoffice > Beheerders**
- **Backoffice > Pilotgebruikers**
- **Backoffice > Standaardgebruikers**

Click a group to see which version is configured for it. You will also see which users belong to that group.

<img width="2063" height="762" alt="Active users screen showing the update rollout groups" src="https://github.com/user-attachments/assets/acb51ccf-2595-43c8-bded-d89268a36e15" />

## Adding users to a group

You can place users in a group in two ways.

Via **Actieve gebruikers**:

1. Select one or more users.
2. Right-click.
3. Choose **Update uitrolgroep wijzigen**.
4. Choose the appropriate group, such as **Pilotgebruikers**.

Via **Constanten**:

1. Go to **Constanten > Systeem > Users - Systeemgebruiker**.
2. Open the desired user.
3. Change **Update uitrolgroep** to the desired group.

## Assigning one version to an entire group

Once the desired users are in the correct group, you can assign a specific version to that group.

1. Open **Actieve gebruikers**.
2. Click the appropriate group on the left.
3. Select the desired version folder in the top-right corner.
4. The selected version is applied to all users in that group.

<img width="2059" height="764" alt="Active users screen showing version selection for a group" src="https://github.com/user-attachments/assets/75299c81-5109-44d6-bdfe-757478099f33" />

## What do you see in Active users?

The screen shows two values:

- **Actuele versie**: the version the user is currently using.
- **Ingestelde versie**: the version configured for the user or their group.

If these values differ, the user is probably still working in an old session. After restarting Florisoft, the configured version will be used.

## Exception: a different version for one user

Normally, a user follows the version of their group. In some cases, you may want to configure one user separately.

You can do this via:

- **Actieve gebruikers** using **Binversie instellen**
- **Constanten > Systeem > Users - Systeemgebruiker**

Only use this when a user is intentionally using a different version from the rest of the group.
