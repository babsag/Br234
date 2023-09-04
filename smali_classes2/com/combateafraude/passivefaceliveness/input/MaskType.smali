.class public final enum Lcom/combateafraude/passivefaceliveness/input/MaskType;
.super Ljava/lang/Enum;
.source "MaskType.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/passivefaceliveness/input/MaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/passivefaceliveness/input/MaskType;

.field public static final enum DEFAULT:Lcom/combateafraude/passivefaceliveness/input/MaskType;

.field public static final enum NONE:Lcom/combateafraude/passivefaceliveness/input/MaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/combateafraude/passivefaceliveness/input/MaskType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/passivefaceliveness/input/MaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/passivefaceliveness/input/MaskType;->DEFAULT:Lcom/combateafraude/passivefaceliveness/input/MaskType;

    .line 2
    new-instance v1, Lcom/combateafraude/passivefaceliveness/input/MaskType;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/combateafraude/passivefaceliveness/input/MaskType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/combateafraude/passivefaceliveness/input/MaskType;->NONE:Lcom/combateafraude/passivefaceliveness/input/MaskType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/combateafraude/passivefaceliveness/input/MaskType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/combateafraude/passivefaceliveness/input/MaskType;->$VALUES:[Lcom/combateafraude/passivefaceliveness/input/MaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/MaskType;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/passivefaceliveness/input/MaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/passivefaceliveness/input/MaskType;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/passivefaceliveness/input/MaskType;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/passivefaceliveness/input/MaskType;->$VALUES:[Lcom/combateafraude/passivefaceliveness/input/MaskType;

    invoke-virtual {v0}, [Lcom/combateafraude/passivefaceliveness/input/MaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/passivefaceliveness/input/MaskType;

    return-object v0
.end method
