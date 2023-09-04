.class final enum Landroidx/camera/core/UseCase$b;
.super Ljava/lang/Enum;
.source "UseCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/UseCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/UseCase$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/UseCase$b;

.field public static final enum ACTIVE:Landroidx/camera/core/UseCase$b;

.field public static final enum INACTIVE:Landroidx/camera/core/UseCase$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/camera/core/UseCase$b;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/UseCase$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/UseCase$b;->ACTIVE:Landroidx/camera/core/UseCase$b;

    .line 2
    new-instance v1, Landroidx/camera/core/UseCase$b;

    const-string v3, "INACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/UseCase$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/UseCase$b;->INACTIVE:Landroidx/camera/core/UseCase$b;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/camera/core/UseCase$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Landroidx/camera/core/UseCase$b;->$VALUES:[Landroidx/camera/core/UseCase$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/UseCase$b;
    .locals 1

    .line 1
    const-class v0, Landroidx/camera/core/UseCase$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/UseCase$b;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/UseCase$b;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/UseCase$b;->$VALUES:[Landroidx/camera/core/UseCase$b;

    invoke-virtual {v0}, [Landroidx/camera/core/UseCase$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/UseCase$b;

    return-object v0
.end method
