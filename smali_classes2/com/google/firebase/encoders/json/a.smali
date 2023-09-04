.class final synthetic Lcom/google/firebase/encoders/json/a;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field private static final a:Lcom/google/firebase/encoders/json/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/encoders/json/a;

    invoke-direct {v0}, Lcom/google/firebase/encoders/json/a;-><init>()V

    sput-object v0, Lcom/google/firebase/encoders/json/a;->a:Lcom/google/firebase/encoders/json/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/encoders/ObjectEncoder;
    .locals 1

    sget-object v0, Lcom/google/firebase/encoders/json/a;->a:Lcom/google/firebase/encoders/json/a;

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-static {p1, p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->e(Ljava/lang/Object;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method
