.class synthetic Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator$a;
.super Ljava/lang/Object;
.source "SensorValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;->values()[Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator$a;->a:[I

    :try_start_0
    sget-object v1, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;->ABSOLUTE_VALUE:Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator$a;->a:[I

    sget-object v1, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;->LAST_TWO_COMPARISON:Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
