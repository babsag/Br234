.class Lcom/ca/mas/core/policy/d;
.super Ljava/lang/Object;
.source "LocationAssertion.java"

# interfaces
.implements Lcom/ca/mas/core/policy/MssoAssertion;


# instance fields
.field private volatile a:Landroid/location/Location;

.field private b:Landroid/location/LocationManager;

.field private c:Landroid/location/LocationListener;

.field private d:Landroid/content/Context;

.field private e:Lcom/ca/mas/core/context/MssoContext;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ca/mas/core/policy/d;)Landroid/location/Location;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/core/policy/d;->a:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic b(Lcom/ca/mas/core/policy/d;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/policy/d;->a:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic c(Lcom/ca/mas/core/policy/d;Ljava/lang/String;)Landroid/location/Location;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/policy/d;->d(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/d;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No permission to access location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MAS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private e()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/d;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/policy/d;->a:Landroid/location/Location;

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ca/mas/core/policy/d;->g()V

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/policy/d;->a:Landroid/location/Location;

    return-object v0
.end method

.method private f(Ljava/lang/String;JF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/d;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ca/mas/core/policy/d;->b:Landroid/location/LocationManager;

    .line 2
    invoke-direct {p0, p1}, Lcom/ca/mas/core/policy/d;->d(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/policy/d;->a:Landroid/location/Location;

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/policy/d;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 4
    new-instance v6, Lcom/ca/mas/core/policy/d$a;

    invoke-direct {v6, p0}, Lcom/ca/mas/core/policy/d$a;-><init>(Lcom/ca/mas/core/policy/d;)V

    iput-object v6, p0, Lcom/ca/mas/core/policy/d;->c:Landroid/location/LocationListener;

    .line 5
    iget-object v1, p0, Lcom/ca/mas/core/policy/d;->b:Landroid/location/LocationManager;

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/d;->e:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "mssoContext.configurationProvider"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "msso.location.enabled"

    .line 3
    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "msso.location.provider.name"

    .line 5
    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "network"

    :cond_1
    const-string v2, "msso.location.min.time"

    .line 6
    invoke-interface {v0, v2}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_2

    const-wide/32 v2, 0x493e0

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_2
    const-string v3, "msso.location.min.distance"

    .line 8
    invoke-interface {v0, v3}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_3

    const/high16 v0, 0x42c80000    # 100.0f

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 10
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/ca/mas/core/policy/d;->f(Ljava/lang/String;JF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No permission to access location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    .line 12
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/ca/mas/core/policy/d;->close()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/d;->c:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ca/mas/core/policy/d;->b:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to access location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ca/mas/core/policy/d;->b:Landroid/location/LocationManager;

    .line 5
    iput-object v0, p0, Lcom/ca/mas/core/policy/d;->c:Landroid/location/LocationListener;

    .line 6
    iput-object v0, p0, Lcom/ca/mas/core/policy/d;->a:Landroid/location/Location;

    :cond_1
    return-void
.end method

.method public init(Lcom/ca/mas/core/context/MssoContext;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/ca/mas/core/context/MssoContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/policy/d;->e:Lcom/ca/mas/core/context/MssoContext;

    .line 2
    iput-object p2, p0, Lcom/ca/mas/core/policy/d;->d:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/ca/mas/core/policy/d;->g()V

    return-void
.end method

.method public processRequest(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/policy/d;->e()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0}, Lcom/ca/mas/core/policy/d;->e()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/ca/mas/core/policy/d;->e()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%f,%f"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/ca/mas/core/policy/RequestInfo;->getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;

    move-result-object p2

    const-string v0, "geo-location"

    invoke-virtual {p2, v0, p1}, Lcom/ca/mas/core/request/MAGInternalRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processResponse(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result p1

    const/16 p2, 0x1c1

    if-eq p1, p2, :cond_0

    const/16 v0, 0x1c0

    if-ne p1, v0, :cond_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-interface {p3}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ca/mas/foundation/MASResponseBody;->getRawContent()[B

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const-string v0, "location"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    if-ne p1, p2, :cond_1

    .line 4
    new-instance p1, Lcom/ca/mas/core/policy/exceptions/LocationRequiredException;

    const-string p2, "This application requires your location information. Please enable location services to continue."

    invoke-direct {p1, p2}, Lcom/ca/mas/core/policy/exceptions/LocationRequiredException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Lcom/ca/mas/core/policy/exceptions/LocationInvalidException;

    const-string p2, "This location is unauthorized."

    invoke-direct {p1, p2}, Lcom/ca/mas/core/policy/exceptions/LocationInvalidException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
