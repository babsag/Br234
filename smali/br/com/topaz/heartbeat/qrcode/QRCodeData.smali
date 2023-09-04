.class public Lbr/com/topaz/heartbeat/qrcode/QRCodeData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "i"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->a:Ljava/lang/String;

    iput-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lbr/com/topaz/heartbeat/qrcode/QRCodeData;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "i"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->a:Ljava/lang/String;

    const-string p1, "m"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    iput-object p1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->a:Ljava/lang/String;

    iput-object p1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->b:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->b:Ljava/lang/String;

    return-object v0
.end method
