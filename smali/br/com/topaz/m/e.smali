.class public Lbr/com/topaz/m/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private d:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/m/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/m/e;->b:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/m/e;->c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p4, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 6

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "checkSelfPermission"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lbr/com/topaz/m/e;->a:Landroid/content/Context;

    aput-object v2, v1, v4

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v1, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/16 p1, -0x3e7

    return p1
.end method

.method private n()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/m/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private t()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "125"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "124"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "121"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/m/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "127"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g()J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/m/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lbr/com/topaz/m/e;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v4, "129"

    invoke-virtual {v3, v2, v4}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "134"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/m/e;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lbr/com/topaz/m/e;->a:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "130"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m/e;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "136"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/m/e;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v0, "WIFI"

    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v0, "5G"

    return-object v0

    :pswitch_1
    const-string v0, "4G"

    return-object v0

    :pswitch_2
    const-string v0, "3G"

    return-object v0

    :pswitch_3
    const-string v0, "2G"

    return-object v0

    :goto_0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    const-string v0, "NOT_CONNECTED"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public o()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_2

    const-string v1, "androidx.core.app.ActivityCompat"

    invoke-direct {p0, v1}, Lbr/com/topaz/m/e;->a(Ljava/lang/String;)I

    move-result v1

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_0

    const-string v1, "android.support.v4.app.ActivityCompat"

    invoke-direct {p0, v1}, Lbr/com/topaz/m/e;->a(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lbr/com/topaz/m/e;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "135"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public p()J
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v0

    return-wide v2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "126"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public q()J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/m/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lbr/com/topaz/m/e;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v4, "128"

    invoke-virtual {v3, v2, v4}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-wide v0
.end method

.method public r()Z
    .locals 5

    iget-object v0, p0, Lbr/com/topaz/m/e;->b:Lbr/com/topaz/l/f0;

    invoke-static {v0}, Lbr/com/topaz/g/d;->a(Lbr/com/topaz/l/f0;)Lbr/com/topaz/g/d;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/m/e;->c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v1}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/g/d;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public s()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m/e;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->H()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lbr/com/topaz/m/e;->c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v2, v1}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lbr/com/topaz/m/e;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "008"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
