.class Lbr/com/topaz/heartbeat/Heartbeat$a;
.super Lbr/com/topaz/heartbeat/StartCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/Heartbeat;->start(Landroid/content/Context;Ljava/lang/String;Lbr/com/topaz/heartbeat/StartCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/StartCallback;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/StartCallback;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/Heartbeat$a;->a:Lbr/com/topaz/heartbeat/StartCallback;

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/StartCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/Heartbeat$a;->a:Lbr/com/topaz/heartbeat/StartCallback;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/StartCallback;->onFailure(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "182"

    invoke-static {p1}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/Heartbeat$a;->a:Lbr/com/topaz/heartbeat/StartCallback;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/StartCallback;->onSuccess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "181"

    invoke-static {p1}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
