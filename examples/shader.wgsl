@vertex fn vs(
@builtin(vertex_index) vertexIndex : u32
) -> @builtin(position) vec4f {

let x = f32(1 - i32(vertexIndex)) * 0.5;
let y = f32(i32(vertexIndex & 1u) * 2 - 1) * 0.5;

return vec4f(x, y, 0.0, 1.0);
}

@fragment fn fs() -> @location(0) vec4f {
return vec4f(1.0, 0.0, 0.0, 1.0);
}