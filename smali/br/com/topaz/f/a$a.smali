.class Lbr/com/topaz/f/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/f/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/f/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/f/a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/f/a$a;->a:Lbr/com/topaz/f/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/f/a$a;->a:Lbr/com/topaz/f/a;

    invoke-static {v0}, Lbr/com/topaz/f/a;->a(Lbr/com/topaz/f/a;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/f/a$a;->a:Lbr/com/topaz/f/a;

    invoke-static {v0}, Lbr/com/topaz/f/a;->a(Lbr/com/topaz/f/a;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "networkInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbr/com/topaz/f/a$a;->a:Lbr/com/topaz/f/a;

    invoke-static {v0}, Lbr/com/topaz/f/a;->b(Lbr/com/topaz/f/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/f/a$a;->a:Lbr/com/topaz/f/a;

    invoke-static {v1, v0}, Lbr/com/topaz/f/a;->a(Lbr/com/topaz/f/a;Landroid/net/wifi/WifiInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/f/a$a;->a:Lbr/com/topaz/f/a;

    invoke-static {v1}, Lbr/com/topaz/f/a;->c(Lbr/com/topaz/f/a;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object v1

    const-string v2, "039"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
