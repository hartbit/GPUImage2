varying highp vec2 textureCoordinate;

uniform sampler2D inputImageTexture;

uniform highp float fractionalWidthOfPixel;
uniform highp float aspectRatio;

void main()
{
    highp vec2 sampleDivisor = vec2(fractionalWidthOfPixel, fractionalWidthOfPixel / aspectRatio);
    
    highp vec2 samplePos = textureCoordinate - mod(textureCoordinate, sampleDivisor) + 0.5 * sampleDivisor;
    gl_FragColor = texture2D(inputImageTexture, samplePos );
}
