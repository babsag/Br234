.class public Lbr/com/topaz/heartbeat/signalinfo/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "1"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "2"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/signalinfo/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/signalinfo/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/signalinfo/a;->c:Ljava/lang/String;

    return-void
.end method
