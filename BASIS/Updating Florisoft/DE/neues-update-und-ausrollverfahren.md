# Neues Florisoft-Update- und Ausrollverfahren

Florisoft verwendet eine neue Methode, um neue Versionen auszurollen. Das Update ist bereits abgeschlossen. Sie müssen nur noch festlegen, welche Benutzergruppe welche Version verwenden darf.

## Warum wird diese Seite angezeigt?

Sie sehen diese Seite, weil Sie eine neue Florisoft-Version für andere Benutzer verfügbar machen möchten. Das Update selbst wurde bereits durchgeführt. Auch die Umstellung auf das neue System ist bereits erfolgt.

Im alten System wurde eine Version über Ordner wie `BINUPDATE` und `BINLATEST` verteilt. Das funktioniert jetzt anders. Sie wählen nicht mehr einen allgemeinen Ausrollordner, sondern eine bestimmte Version für jede Benutzergruppe.

## Welche Gruppen gibt es?

Es gibt drei Gruppen:

- Administratoren
- Pilotbenutzer
- Standardbenutzer

### Was bedeutet das?

- Administratoren: testen die neue Version zuerst.
- Pilotbenutzer: erhalten die Version danach in einer kleinen Gruppe.
- Standardbenutzer: erhalten die Version, sobald sie getestet und freigegeben wurde.

### Empfohlene Reihenfolge

1. Administratoren
2. Pilotbenutzer
3. Standardbenutzer

Auf diese Weise bleibt das Risiko für die meisten Benutzer so gering wie möglich.

## Was ist bereits automatisch geschehen?

Bei der ersten Umstellung auf dieses neue System wurde das Update möglicherweise noch über den alten Prozess gestartet. Die Version wurde anschließend automatisch umgewandelt und in einem neuen Versionsordner gespeichert, zum Beispiel:

```text
dataadt\BIN140.598_260603
```

In diesem Ordner steht `140.598` für die Versionsnummer und `260603` für das Datum der Version.

Der Benutzer, der das Update durchgeführt hat, wurde automatisch der Gruppe **Beheerders** zugeordnet. Die Version für diese Gruppe wurde ebenfalls bereits eingestellt. Sie müssen für diese Gruppe nichts weiter tun.

## Was müssen Sie jetzt tun?

Wenn Sie die neue Version für geeignet halten, können Sie sie einer Gruppe zuweisen.

Eine gute Reihenfolge ist:

1. Lassen Sie zunächst nur die **Administratoren** mit der neuen Version arbeiten.
2. Weisen Sie die Version danach einer kleinen Gruppe von **Pilotbenutzern** zu.
3. Stellen Sie die Version erst anschließend für alle **Standardbenutzer** bereit.

## Aktive Benutzer öffnen

Öffnen Sie den Bildschirm **Actieve gebruikers**.

Auf der linken Seite des Bildschirms sehen Sie die Gruppen:

- **Backoffice > Beheerders**
- **Backoffice > Pilotgebruikers**
- **Backoffice > Standaardgebruikers**

Klicken Sie auf eine Gruppe, um zu sehen, welche Version für sie eingestellt ist. Sie sehen dort auch, welche Benutzer zu dieser Gruppe gehören.

<img width="2063" height="762" alt="Bildschirm Aktive Benutzer mit den Ausrollgruppen" src="https://github.com/user-attachments/assets/acb51ccf-2595-43c8-bded-d89268a36e15" />

## Benutzer zu einer Gruppe hinzufügen

Sie können Benutzer auf zwei Arten einer Gruppe zuordnen.

Über **Actieve gebruikers**:

1. Wählen Sie einen oder mehrere Benutzer aus.
2. Klicken Sie mit der rechten Maustaste.
3. Wählen Sie **Update uitrolgroep wijzigen**.
4. Wählen Sie die gewünschte Gruppe, zum Beispiel **Pilotgebruikers**.

Über **Constanten**:

1. Gehen Sie zu **Constanten > Systeem > Users - Systeemgebruiker**.
2. Öffnen Sie den gewünschten Benutzer.
3. Ändern Sie **Update uitrolgroep** in die gewünschte Gruppe.

## Eine ganze Gruppe auf eine Version setzen

Wenn sich die gewünschten Benutzer in der richtigen Gruppe befinden, können Sie dieser Gruppe eine bestimmte Version zuweisen.

1. Öffnen Sie **Actieve gebruikers**.
2. Klicken Sie links auf die gewünschte Gruppe.
3. Wählen Sie oben rechts den gewünschten Versionsordner aus.
4. Die ausgewählte Version wird auf alle Benutzer dieser Gruppe angewendet.

<img width="2059" height="764" alt="Bildschirm Aktive Benutzer mit der Versionsauswahl für eine Gruppe" src="https://github.com/user-attachments/assets/75299c81-5109-44d6-bdfe-757478099f33" />

## Was sehen Sie unter Aktive Benutzer?

Auf dem Bildschirm werden zwei Werte angezeigt:

- **Actuele versie**: die Version, die der Benutzer derzeit verwendet.
- **Ingestelde versie**: die Version, die für den Benutzer oder seine Gruppe eingestellt ist.

Wenn sich diese Werte unterscheiden, arbeitet der Benutzer wahrscheinlich noch in einer alten Sitzung. Nach einem Neustart von Florisoft wird die eingestellte Version verwendet.

## Ausnahme: eine abweichende Version für einen Benutzer

Normalerweise verwendet ein Benutzer die Version seiner Gruppe. In manchen Fällen möchten Sie jedoch einen einzelnen Benutzer separat einstellen.

Dies ist möglich über:

- **Actieve gebruikers** über **Binversie instellen**
- **Constanten > Systeem > Users - Systeemgebruiker**

Verwenden Sie dies nur, wenn ein Benutzer bewusst eine andere Version als die übrigen Gruppenmitglieder verwenden soll.
