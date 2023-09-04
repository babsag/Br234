.class public abstract Lcom/ca/mas/foundation/MASDevice;
.super Ljava/lang/Object;
.source "MASDevice.java"


# static fields
.field private static a:Lcom/ca/mas/foundation/MASDevice;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ca/mas/foundation/MASDevice$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/foundation/MASDevice;-><init>()V

    return-void
.end method

.method public static getCurrentDevice()Lcom/ca/mas/foundation/MASDevice;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASDevice;->a:Lcom/ca/mas/foundation/MASDevice;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ca/mas/foundation/MASDevice$a;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASDevice$a;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/MASDevice;->a:Lcom/ca/mas/foundation/MASDevice;

    .line 3
    :cond_0
    sget-object v0, Lcom/ca/mas/foundation/MASDevice;->a:Lcom/ca/mas/foundation/MASDevice;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/ca/mas/foundation/c;->i(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public abstract deregister(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public getAttribute(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/ca/mas/foundation/c;->e(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public getAttributes(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ca/mas/foundation/c;->f(Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract isRegistered()Z
.end method

.method public removeAllAttributes(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ca/mas/foundation/c;->d(Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/ca/mas/foundation/c;->c(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public abstract resetLocally()V
.end method

.method public abstract startAsBluetoothPeripheral(Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener;)V
.end method

.method public abstract stopAsBluetoothPeripheral()V
.end method
