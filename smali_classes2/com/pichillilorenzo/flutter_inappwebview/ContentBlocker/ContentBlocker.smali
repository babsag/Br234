.class public Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;
.super Ljava/lang/Object;
.source "ContentBlocker.java"


# instance fields
.field public action:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;

.field public trigger:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trigger",
            "action"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;->trigger:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;

    .line 3
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;->action:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;

    return-void
.end method
