.class public final enum Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;
.super Ljava/lang/Enum;
.source "SensorValidatorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

.field public static final enum ABSOLUTE_VALUE:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

.field public static final enum LAST_TWO_COMPARISON:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    const-string v1, "ABSOLUTE_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;->ABSOLUTE_VALUE:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    const-string v3, "LAST_TWO_COMPARISON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;->LAST_TWO_COMPARISON:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;->$VALUES:[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;->$VALUES:[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    invoke-virtual {v0}, [Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    return-object v0
.end method
