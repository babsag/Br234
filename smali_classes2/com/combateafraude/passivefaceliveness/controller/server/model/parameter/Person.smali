.class public Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field personId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "personId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;->personId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;->name:Ljava/lang/String;

    return-void
.end method
