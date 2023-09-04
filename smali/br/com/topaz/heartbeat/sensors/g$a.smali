.class public Lbr/com/topaz/heartbeat/sensors/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/heartbeat/sensors/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m"
    .end annotation
.end field

.field final synthetic d:Lbr/com/topaz/heartbeat/sensors/g;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/sensors/g;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/sensors/g$a;->d:Lbr/com/topaz/heartbeat/sensors/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/sensors/g$a;->a:I

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/heartbeat/sensors/g$a;
    .locals 1

    const-string v0, "c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/sensors/g$a;->a:I

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lbr/com/topaz/heartbeat/sensors/g$a;->b:I

    const-string v0, "m"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lbr/com/topaz/heartbeat/sensors/g$a;->c:I

    return-object p0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/sensors/g$a;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/sensors/g$a;->c:I

    return v0
.end method
