.class Lbr/com/topaz/heartbeat/Heartbeat$b;
.super Lbr/com/topaz/heartbeat/CurrentLocationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/Heartbeat;->getCurrentLocation(Landroid/content/Context;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/CurrentLocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/CurrentLocationCallback;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/CurrentLocationCallback;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/Heartbeat$b;->a:Lbr/com/topaz/heartbeat/CurrentLocationCallback;

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/CurrentLocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/Heartbeat$b;->a:Lbr/com/topaz/heartbeat/CurrentLocationCallback;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/CurrentLocationCallback;->onFailure(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "203"

    invoke-static {v0}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/Heartbeat$b;->a:Lbr/com/topaz/heartbeat/CurrentLocationCallback;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/CurrentLocationCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "202"

    invoke-static {v0}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
