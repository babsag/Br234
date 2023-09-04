.class public final enum Lcom/combateafraude/passivefaceliveness/input/Resolution;
.super Ljava/lang/Enum;
.source "Resolution.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/passivefaceliveness/input/Resolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/passivefaceliveness/input/Resolution;

.field public static final enum FULL_HD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

.field public static final enum HD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

.field public static final enum QUAD_HD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

.field public static final enum ULTRA_HD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

.field public static final enum qHD:Lcom/combateafraude/passivefaceliveness/input/Resolution;


# instance fields
.field public size:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/combateafraude/passivefaceliveness/input/Resolution;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x21c

    const/16 v3, 0x3c0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const-string v2, "qHD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/combateafraude/passivefaceliveness/input/Resolution;-><init>(Ljava/lang/String;ILandroid/util/Size;)V

    sput-object v0, Lcom/combateafraude/passivefaceliveness/input/Resolution;->qHD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    .line 2
    new-instance v1, Lcom/combateafraude/passivefaceliveness/input/Resolution;

    new-instance v2, Landroid/util/Size;

    const/16 v4, 0x2d0

    const/16 v5, 0x500

    invoke-direct {v2, v4, v5}, Landroid/util/Size;-><init>(II)V

    const-string v4, "HD"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/combateafraude/passivefaceliveness/input/Resolution;-><init>(Ljava/lang/String;ILandroid/util/Size;)V

    sput-object v1, Lcom/combateafraude/passivefaceliveness/input/Resolution;->HD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    .line 3
    new-instance v2, Lcom/combateafraude/passivefaceliveness/input/Resolution;

    new-instance v4, Landroid/util/Size;

    const/16 v6, 0x438

    const/16 v7, 0x780

    invoke-direct {v4, v6, v7}, Landroid/util/Size;-><init>(II)V

    const-string v6, "FULL_HD"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/combateafraude/passivefaceliveness/input/Resolution;-><init>(Ljava/lang/String;ILandroid/util/Size;)V

    sput-object v2, Lcom/combateafraude/passivefaceliveness/input/Resolution;->FULL_HD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    .line 4
    new-instance v4, Lcom/combateafraude/passivefaceliveness/input/Resolution;

    new-instance v6, Landroid/util/Size;

    const/16 v8, 0x5a0

    const/16 v9, 0xa00

    invoke-direct {v6, v8, v9}, Landroid/util/Size;-><init>(II)V

    const-string v8, "QUAD_HD"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/combateafraude/passivefaceliveness/input/Resolution;-><init>(Ljava/lang/String;ILandroid/util/Size;)V

    sput-object v4, Lcom/combateafraude/passivefaceliveness/input/Resolution;->QUAD_HD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    .line 5
    new-instance v6, Lcom/combateafraude/passivefaceliveness/input/Resolution;

    new-instance v8, Landroid/util/Size;

    const/16 v10, 0x870

    const/16 v11, 0xf00

    invoke-direct {v8, v10, v11}, Landroid/util/Size;-><init>(II)V

    const-string v10, "ULTRA_HD"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/combateafraude/passivefaceliveness/input/Resolution;-><init>(Ljava/lang/String;ILandroid/util/Size;)V

    sput-object v6, Lcom/combateafraude/passivefaceliveness/input/Resolution;->ULTRA_HD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/combateafraude/passivefaceliveness/input/Resolution;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    .line 6
    sput-object v8, Lcom/combateafraude/passivefaceliveness/input/Resolution;->$VALUES:[Lcom/combateafraude/passivefaceliveness/input/Resolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/util/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/combateafraude/passivefaceliveness/input/Resolution;->size:Landroid/util/Size;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/Resolution;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/passivefaceliveness/input/Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/passivefaceliveness/input/Resolution;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/passivefaceliveness/input/Resolution;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/passivefaceliveness/input/Resolution;->$VALUES:[Lcom/combateafraude/passivefaceliveness/input/Resolution;

    invoke-virtual {v0}, [Lcom/combateafraude/passivefaceliveness/input/Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/passivefaceliveness/input/Resolution;

    return-object v0
.end method
