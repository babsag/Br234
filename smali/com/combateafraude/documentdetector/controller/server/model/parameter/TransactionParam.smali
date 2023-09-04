.class public Lcom/combateafraude/documentdetector/controller/server/model/parameter/TransactionParam;
.super Ljava/lang/Object;
.source "TransactionParam.java"


# instance fields
.field a:[Lcom/combateafraude/documentdetector/controller/server/model/parameter/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "files"
    .end annotation
.end field

.field b:Lcom/combateafraude/documentdetector/controller/server/model/parameter/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "template"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/combateafraude/documentdetector/controller/server/model/parameter/a;

    .line 2
    new-instance v1, Lcom/combateafraude/documentdetector/controller/server/model/parameter/a;

    invoke-direct {v1, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/TransactionParam;->a:[Lcom/combateafraude/documentdetector/controller/server/model/parameter/a;

    .line 3
    new-instance p1, Lcom/combateafraude/documentdetector/controller/server/model/parameter/b;

    invoke-direct {p1, p2}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/b;-><init>(Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/TransactionParam;->b:Lcom/combateafraude/documentdetector/controller/server/model/parameter/b;

    return-void
.end method
