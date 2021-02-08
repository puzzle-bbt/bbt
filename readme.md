# BBT
## Zenhub
### Stories
Das BBT hat ein zentrals Zenhub Board mit welchem man die drei Repos (bbt, tasks und docs) verwalten kann. Tickets welche im Zenhub erfasst werden,
werden in github als Issues erfasst. Neu Tickets kann man auf dem Board mit **New Issue** erstellen.

Es öffnet sich ein Fenster mit der Storyvorschau. Zuerst sollte man folgende Sachen überprüfen:

```
  Type      -> (Grün) Issue
  Create In -> Aktuelles Projektrepo (puzzle-bbt/tasks)
  Template  -> None, kann später noch erstellt werden
```

Danach kann man wie gewohnt die Storybeschreibung erstellen. Die Pipeline sollte New Issues sein. Folgend sollte man noch den Milestone, das Assignee und das 
Estimate hinzufügen (Falls dies zu diesem Zeitpunk schon bekannt ist).

### Sprints

Die Sprints werden ebenfalls mit Zenhub verwaltet. Damit man einen neuen Sprint erstellen kann, befindet sich dies als Milestone in Zenhub. Dort kann man den Sprintnamen
definieren. Vorzugsweise:
```
  Sprint WW "Emoji" (SP: XX {Kürzel vom 1. Teammitglied: YY, Kürzel vom 2. Teammitglied: ZZ, ...})
```
Sprint Start und Ende aus dem Planungsfile übernehmen. Storypoints ebenfalls. 

### Sprintablauf
*Planing Start*

Man erstellt neue Stories und einen neuen Milestone nach obigen vorgehen. Danach kann man mit dem Planning beginnen. Stories schätzen dann die entsprechende Schätzung 
unter dem Punkt Estimate eintragen, Milestone muss auf den neu erstellten Sprint gesetzt werden. Die Storyvorschau schliessen und die Story auf Sprint Backlog ziehen. 

*Planning Ende & Start arbeiten am Sprint*

Story wird geöffnet und Assignee wird gesetzt. Danach die Storyvorschau schliessen. Die Story nun per Drag&Drop von Sprint Backlog in die In Progress Lane ziehen.

Sollte die Story abgeschlossen sein, diese in die Review&QA Lane ziehen, Assignee ändern auf die Person welche das Review erstellt. Nach erhalte des Reviews Story entsprechend
nach In Progress oder nach Closed bewegen. 

*Sprint Ende*

Burndown befindet sich unter Reports -> Burndown. Der Sprint Milestone beendet sich selbst. Bei nicht beendeten Stories muss man den Milestone entfernen und diesen 
dann dem Neuen Sprint zuweisen.


