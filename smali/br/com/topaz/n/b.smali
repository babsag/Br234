.class public Lbr/com/topaz/n/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/n/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/location/LocationManager;

.field private c:Landroid/location/LocationListener;

.field private d:Landroid/location/Location;

.field private e:Z

.field private f:Lbr/com/topaz/l/f0;

.field private g:Lbr/com/topaz/k/b;

.field private h:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbr/com/topaz/n/b;->d:Landroid/location/Location;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/n/b;->e:Z

    iput-object p1, p0, Lbr/com/topaz/n/b;->a:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lbr/com/topaz/n/b;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/topaz/n/b;->e:Z

    new-instance v0, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static {p1}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v1

    new-instance v2, Lbr/com/topaz/k/b;

    invoke-direct {v2, v0, v1}, Lbr/com/topaz/k/b;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;)V

    iput-object v2, p0, Lbr/com/topaz/n/b;->g:Lbr/com/topaz/k/b;

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/n/b;->f:Lbr/com/topaz/l/f0;

    new-instance p1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v0, p0, Lbr/com/topaz/n/b;->f:Lbr/com/topaz/l/f0;

    invoke-direct {p1, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p1, p0, Lbr/com/topaz/n/b;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lbr/com/topaz/n/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\[(.*),(.*),(.*),(.*)]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private i()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lbr/com/topaz/n/b;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

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

.method private j()Landroid/location/Location;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/n/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/n/b;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/n/b;->d:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/n/b;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "006"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lbr/com/topaz/n/b;->d:Landroid/location/Location;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, ","

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/n/b;->j()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbr/com/topaz/n/b;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbr/com/topaz/n/b;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/com/topaz/n/b;->d:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/n/b;->g:Lbr/com/topaz/k/b;

    invoke-virtual {v2, v1}, Lbr/com/topaz/k/b;->a(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/n/b;->f:Lbr/com/topaz/l/f0;

    invoke-interface {v3, v2}, Lbr/com/topaz/l/f0;->d([B)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbr/com/topaz/n/b;->f:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->q()[B

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lbr/com/topaz/n/b;->g:Lbr/com/topaz/k/b;

    invoke-virtual {v2, v1}, Lbr/com/topaz/k/b;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/n/b;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "123"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lbr/com/topaz/n/a$a;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/n/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbr/com/topaz/n/b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lbr/com/topaz/n/b$b;

    invoke-direct {v0, p0, p1}, Lbr/com/topaz/n/b$b;-><init>(Lbr/com/topaz/n/b;Lbr/com/topaz/n/a$a;)V

    iput-object v0, p0, Lbr/com/topaz/n/b;->c:Landroid/location/LocationListener;

    iget-object p1, p0, Lbr/com/topaz/n/b;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lbr/com/topaz/n/a$a;->a()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/n/b;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "006"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lbr/com/topaz/n/b;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbr/com/topaz/n/b;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/n/b;->b:Landroid/location/LocationManager;

    invoke-static {v0}, Landroidx/core/location/LocationManagerCompat;->isLocationEnabled(Landroid/location/LocationManager;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 3

    iget-boolean v0, p0, Lbr/com/topaz/n/b;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/n/b;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lbr/com/topaz/n/b;->c:Landroid/location/LocationListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/n/b;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "006"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbr/com/topaz/n/b;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    new-instance v0, Lbr/com/topaz/n/b$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/n/b$a;-><init>(Lbr/com/topaz/n/b;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/n/b;->a(Lbr/com/topaz/n/a$a;)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lbr/com/topaz/n/b;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
