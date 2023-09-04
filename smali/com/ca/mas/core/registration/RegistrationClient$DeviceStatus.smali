.class public final enum Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;
.super Ljava/lang/Enum;
.source "RegistrationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/registration/RegistrationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

.field public static final enum ACTIVATED:Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

.field public static final enum REGISTERED:Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    const-string v1, "ACTIVATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;->ACTIVATED:Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    .line 2
    new-instance v1, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    const-string v3, "REGISTERED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;->REGISTERED:Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;->$VALUES:[Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;->$VALUES:[Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    invoke-virtual {v0}, [Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    return-object v0
.end method
